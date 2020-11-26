import { UserService } from './../../../../services/user.service';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-change-user-email',
  templateUrl: './change-user-email.component.html',
  styleUrls: ['./change-user-email.component.scss']
})
export class ChangeUserEmailComponent implements OnInit {
  changeEmailForm: FormGroup;

  constructor(
    private fb: FormBuilder,
    private userService: UserService
  ) { }

  ngOnInit() {
    this.changeEmailForm = this.fb.group({
      password: [''],
      newEmail: [''],
    });
  }

  changeEmail(){
    this.userService.changeUserEmail(this.changeEmailForm.value).subscribe(res => {
      console.log('jupi');
    },
    err => {
      console.log(err);
    }
    );
  }

}
