import { Component, OnInit, ViewChildren, AfterViewInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { QuizService } from './../../../services/quiz.service';
import { ToastService } from './../../../services/toast.service';
import Swal from 'sweetalert2/dist/sweetalert2.js';
import { CollapseComponent } from 'angular-bootstrap-md';
import { TranslateService } from '@ngx-translate/core';

@Component({
  selector: 'app-quiz-solve',
  templateUrl: './quiz-solve.component.html',
  styleUrls: ['./quiz-solve.component.scss']
})



export class QuizSolveComponent implements OnInit, AfterViewInit {

  @ViewChildren(CollapseComponent) collapses: CollapseComponent[];

  testCode: string;
  quizCodeFlag: boolean;
  currentQuestionNumber: number;
  currentQuestion: any;
  quizStarted: boolean;
  quizCompleted = false;
  numberOfQuestion = 0;
  numberOfAnswer = 0;
  quizID: number;
  backPossible: boolean;
  answers: any = [];
  radioSelected: number;
  isCollapsed = true;

  timeLeft = 60; // tutaj Kowol zrobi endpoint zwracający pozostały czas na quiz, czas ten będzie zawsze aktualny, niezależnie
  // czy quiz został zaczęty czy nie
  interval;

  quizCodeForm: FormGroup;


  ngAfterViewInit() {
    Promise.resolve().then(() => {
      this.collapses.forEach((collapse: CollapseComponent) => {
        collapse.toggle();
      });
    });
  }

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private formBuilder: FormBuilder,
    private quizService: QuizService,
    private toast: ToastService,
    private translate: TranslateService
  ) { }

  ngOnInit(): void {
    // Przykładowe uruchomienie quizu poprzez posiadanie kodu
    // w przeciwnym wypadku, należy podać go ręcznie
    // http://localhost:4200/quiz-solve;testCode=example_Code
    this.testCode = this.route.snapshot.params.testCode;
    this.userHasQuizCode(this.testCode);

    this.quizCodeForm = this.formBuilder.group({
      testCode: [this.quizCodeFlag ? this.testCode : '', [Validators.required, Validators.minLength(1)]]
    });
  }

  userHasQuizCode(code: string) {
    if (!code || code.length <= 0) {
      this.quizCodeFlag = false;
    } else {
      this.quizCodeFlag = true;
    }
  }


  sendAnswer(radioSelected, testcode, testid, questionnumber, cangoback) {
    const ansToSend = {
      questionId: this.currentQuestion.id,
      answerId: radioSelected,
      testCode: this.testCode
    };
    this.quizService.sendQuestionAnswer(ansToSend).subscribe(res => {
      this.nextQuestion(testcode, testid, questionnumber, cangoback);
    },
      err => {
        this.toast.showError('quiz.sendAnswerError');
      }
    );
  }

  nextQuestion(testcode, testid, questionnumber, cangoback) {

    if (!(cangoback || this.currentQuestionNumber < questionnumber)) {
      Swal.fire(this.translate.instant('oops'), this.translate.instant('cant-go-back'), 'error');
    } else if (questionnumber > this.numberOfQuestion) {
      Swal.fire(this.translate.instant('nice'), this.translate.instant('quiz-end'), 'success');
      this.quizStarted = false;
      this.quizCompleted = true;
    } else if (!cangoback && this.currentQuestionNumber + 1 < questionnumber) {
      Swal.fire(this.translate.instant('oops'), this.translate.instant('cant-skip'), 'error');
    } else {
      this.startQuiz(testid, testcode, questionnumber);
    }
  }

  getQuizInfo() {
    let testCode;

    if (this.quizCodeFlag) {
      testCode = this.testCode;
    } else {
      testCode = this.quizCodeForm.value.testCode;
    }

    this.quizService.getQuizInfo(testCode).subscribe(
      res => {
        if (res && res.responseCode === 1) {
          this.toast.showSuccess('quiz.exists');

          Swal.fire({
            title: this.translate.instant('start-quiz-confirmation'),
            text: this.translate.instant('one-attempt-quiz'),
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: this.translate.instant('start-quiz'),
            cancelButtonText: this.translate.instant('go-back')
          })
            .then((swalStartQuiz) => {
              if (swalStartQuiz.value) {
                Swal.fire({
                  title: this.translate.instant('quiz-started'),
                  icon: 'success',
                });
                // kontynuacja przechodzenia do testu
                this.currentQuestionNumber = res.currentQuestion;
                this.numberOfQuestion = res.amountOfQuestions;
                this.quizID = res.quizId;
                this.testCode = testCode;
                this.backPossible = res.backPossible;
                this.startQuiz(res.quizId, testCode, this.currentQuestionNumber);

              } else if (swalStartQuiz.dismiss === Swal.DismissReason.cancel) {
                Swal.fire(this.translate.instant('quiz-cancelled'));
              }
            });
        }
      },
      err => {
        if (err && err.responseCode === 11) {
          this.toast.showError('quiz.notExists');
          // TODO do dodania obsługa informacji z innymi responseCode (dzisiaj już czasu nie miałem);
        } else {
          this.toast.showError('criticalError');
        }
      }
    );
  }

  // aktualnie nieużywany (zwraca całą zawartość - do obgadania
  // napewno będzie wykorzystany w apce)
  getQuizFullInfo(quizId: number) {
    this.quizService.getFullQuizInfo(quizId).subscribe(
      // TODO
    );
  }

  startQuiz(quizId: number, testCode: string, currentQuestionNumber) {
    this.currentQuestionNumber = currentQuestionNumber;
    this.quizService.getQuestion(quizId, testCode, currentQuestionNumber).subscribe(
      res => {
        this.currentQuestion = res;
        console.log(res);
        console.log(this.currentQuestion);
        if (res) {
          this.quizStarted = true;
        }
      },
      err => {
        // if (err && err.status === 409) {
        //   this.toast.showWarning('message.userAlreadyExists');
        // } else {
        //   this.toast.showError('message.notRegistered');
        // }
      }
    );
  }

  startTimer() {
    this.interval = setInterval(() => {
      if (this.timeLeft > 0) {
        this.timeLeft--;
      } else {
        this.timeLeft = 60;
      }
    }, 1000);
  }

}
