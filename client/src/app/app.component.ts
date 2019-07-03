import { WebStorageService } from 'angular-webstorage-service';
import { LOCAL_STORAGE } from 'angular-webstorage-service';
import { Component, Inject, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LoginData } from './models/login/login-data';
import { Role } from './models/role/role';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'RaceTiming!!!!';
  login: LoginData;
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private route: Router) {
    this.login = new LoginData();
    this.login.role = new Role();
    if (this.storage.get('login') != null) {
      this.login = this.storage.get('login');
    }
  }

  ngOnInit(): void {
    if (this.storage.get('login') != null) {
      this.login = this.storage.get('login');
    }
  }

  logout() {
    this.login = new LoginData();
    this.login.role = new Role();
    this.storage.set('login', this.login);
    this.ngOnInit();
    this.route.navigateByUrl('/login');
  }
  setInLocal(key, val) {
    this.storage.set(key, val);
  }
}
