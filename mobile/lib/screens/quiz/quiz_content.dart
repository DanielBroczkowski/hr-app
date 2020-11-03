import 'package:flutter/material.dart';
import 'package:mobile/models/answer_result_dto.dart';
import 'package:mobile/models/quiz_info_with_question.dart';
import 'package:mobile/screens/quiz/widgets/list_of_answers_widget.dart';
import 'package:mobile/screens/quiz/widgets/question_widget.dart';
import 'package:mobile/values/sizes.dart';

class QuizContent extends StatefulWidget {

  final QuizInfoWithQuestion quizInfoWithQuestion;

  QuizContent(this.quizInfoWithQuestion);

  @override
  _QuizContentState createState() => _QuizContentState();
}

class _QuizContentState extends State<QuizContent> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: QuestionWidget(
            amountOfQuestions: widget.quizInfoWithQuestion.quizInformationDto.amountOfQuestions,
            questionText: widget.quizInfoWithQuestion.questionResultDto.text,
            getQuestionNumber: widget.quizInfoWithQuestion.quizInformationDto.backPossible ? getQuestionNumber : null,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: ListOfAnswersWidget(answers: widget.quizInfoWithQuestion.questionResultDto.answers, setAnswerForThisQuestion: setAnswerForThisQuestion,),
          ),
        ),
        Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                  height: Sizes.hugeSize,
                  onPressed: (){finishQuiz();},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: Text("Zakoncz test")
                    ),
                  )
              ),
            ),
        )
      ],
    );
  }

  void getNextQuestion() {

  }

  void setAnswerForThisQuestion(AnswerResultDto answerResultDto) {

  }

  void finishQuiz() {
    Navigator.of(context).pop();
  }

  void getQuestionNumber(int questionNumber) {

  }


}
