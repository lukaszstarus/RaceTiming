import { AppComponent } from './../../app.component';
import { Player } from 'src/app/models/player/player';
import { LoginService } from './../../services/login-service/login.service';
import { Component, Inject, OnInit } from '@angular/core';
import { LoginData } from 'src/app/models/login/login-data';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.css']
})
export class LoginFormComponent implements OnInit {
  login: LoginData;
  loginFailed = false;
  constructor(private loginService: LoginService, private app: AppComponent,
              private router: Router, @Inject(LOCAL_STORAGE) private storage: WebStorageService) {
    this.login = new LoginData();
  }
  ngOnInit() {
  }

  onSubmit() {
    this.loginService.login(this.login).subscribe((data: any) => {
      if (data) {
        this.login = data;
        this.login.players= data.player;
        this.login.password = '';
        this.storage.set('login', this.login);
        this.app.ngOnInit();
        this.router.navigateByUrl('/competitions');
      } else {
        this.loginFailed = true;
      }
    });
  }
  saveInLocal(key, val): void {
    console.log('recieved= key:' + key + 'value:' + val);
    this.storage.set(key, val);
    }
}
