import { CompanyService } from './../../services/company.service';
import { AlertsService } from './../../services/alerts.service';
import { async } from '@angular/core/testing';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TokenStorageService } from './../../services/security/token-storage.service';


@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {
  userAlerts = 0;
  hrAlerts = 0;

  isLogged = false;
  userRole = 'USER';
  userLogin = '';

  constructor(
    private router: Router,
    private tokenStorage: TokenStorageService,
    private alertsService: AlertsService,
    private companyService: CompanyService
  ) { }



  ngOnInit(): void {
    this.isLogged = this.tokenStorage.isAuthenticated();
    this.userRole = this.tokenStorage.getRole();
    this.userLogin = this.tokenStorage.getUser();

    if (this.isLogged) {
      this.checkForAlerts();
    }
  }

  logout() {
    this.tokenStorage.deleteUserFromLocalStorage();
    window.location.reload();
    this.router.navigate(['/home']);
  }

  checkForAlerts() {
    this.alertsService.getUserAlerts().subscribe(res => {
      this.userAlerts = + res;
    });

    this.companyService.getCurrentCompany().subscribe(res => {
      if (res && res.length && this.userRole !== 'CEO') {
        this.alertsService.getHrAlerts().subscribe(res2 => {
          this.hrAlerts = + res2;
        });
      }
    }

    );


  }
}
