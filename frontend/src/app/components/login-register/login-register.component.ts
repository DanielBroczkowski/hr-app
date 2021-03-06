import { AccountTypes } from './../../classes/account-types';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { MustMatch } from 'src/app/helpers/must-match';
import { UserService } from './../../services/user.service';
import { User } from './../../classes/user';
import { TokenStorageService } from './../../services/security/token-storage.service';
import { ToastService } from './../../services/toast.service';

@Component({
  selector: 'app-login-register',
  templateUrl: './login-register.component.html',
  styleUrls: ['./login-register.component.scss']
})
export class LoginRegisterComponent implements OnInit {

  loginForm: FormGroup;
  registerForm: FormGroup;

  formValidation: FormGroup;
  onBlurSubmitValidation: FormGroup;
  validationRegisterForm: FormGroup;
  selectedForm = 'login';

  user: User = new User();

  constructor(
    private formBuilder: FormBuilder,
    private userService: UserService,
    private tokenStorage: TokenStorageService,
    private toast: ToastService
  ) { }

  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      login: [''],
      password: ['']
    });

    this.registerForm = this.formBuilder.group({
      emailReg: ['', [Validators.required, Validators.email]],
      emailConfirmReg: ['', [Validators.required, Validators.email]],
      passwordLengthReg: ['', [Validators.required, Validators.minLength(6)]],
      passwordConfirmReg: ['', [Validators.required, Validators.minLength(6)]],
      fnameReg: ['', Validators.required],
      lnameReg: ['', Validators.required],
      phoneNumberReg: ['', [Validators.required, Validators.minLength(9),
      Validators.pattern(/^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/)]
      ],
      LoginReg: ['', Validators.required]
    }, { validator: [MustMatch('passwordLengthReg', 'passwordConfirmReg'), MustMatch('emailReg', 'emailConfirmReg')] });

  }

  // convenience getter for easy access to form fields
  get f() { return this.registerForm.controls; }


  switchForm() {
    if (this.selectedForm === 'login') {
      this.selectedForm = 'register';
    }
    else {
      this.selectedForm = 'login';
    }
  }

  loginSubmit() {
    this.userService.login(this.loginForm.value).subscribe(
      res => {
        if (res && res.ok && res.status === 200) {
          const authorizationInfo = res.headers.get('authorization');
          this.tokenStorage.saveUserInLocalStorage(authorizationInfo);
          window.location.reload();
          this.toast.showSuccess('message.logged');
        }
      },
      err => {
        if (err && err.status === 403) {
          this.toast.showWarning('message.userNamePasswordWrong');
        } else {
          this.toast.showError('message.notLogged');
        }
      }
    );
  }

  registerSubmit() {
    this.user.FKuserAccountTypes = new AccountTypes();
    this.user.FKuserAccountTypes.id = 4; // tymczasowo user

    // 1 - ADMIN
    // 2 - CEO
    // 3 - HR
    // 4 - USER

    this.userService.register(this.user).subscribe(
      res => {
        if (res && res.ok && res.status === 200) {
          // TODO
          this.toast.showSuccess('message.registered');
        }
      },
      err => {
        if (err && err.status === 409) {
          this.toast.showError('message.userAlreadyExists');
        } else {
          this.toast.showError('message.notRegistered');
        }
      }
    );
  }
}
