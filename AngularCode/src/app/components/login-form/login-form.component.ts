import { Player } from 'src/app/models/player/player';
import { LoginService } from './../../services/login-service/login.service';
import { Component, Inject, OnInit } from '@angular/core';
import { LoginData } from 'src/app/models/login/login-data';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.css']
})
export class LoginFormComponent implements OnInit {
  constructor(private loginService: LoginService, @Inject(LOCAL_STORAGE) private storage: WebStorageService) {
    this.login = new LoginData();
  }
  loggedIn = false;
  login: LoginData;
  player: Player;
  ngOnInit() {
    this.getFromLocal('loggedIn');
  }

  onSubmit() {
    console.log(this.login);
    this.loginService.login(this.login).subscribe(data => this.player = data);
    if (this.player) {
      this.loggedIn = true;
      this.saveInLocal('loggedIn', this.loggedIn);
      this.saveInLocal('player', this.player);
    }
  }
  saveInLocal(key, val): void {
    console.log('recieved= key:' + key + 'value:' + val);
    this.storage.set(key, val);
    }

  getFromLocal(key): void {
      this.loggedIn = this.storage.get(key);
      }
}
