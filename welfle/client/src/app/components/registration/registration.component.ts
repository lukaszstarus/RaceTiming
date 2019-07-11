import { LoginService } from './../../services/login-service/login.service';
import { LoginData } from './../../models/login/login-data';
import { Component, OnInit, Inject } from '@angular/core';
import { Player } from 'src/app/models/player/player';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { PlayerService } from 'src/app/services/player-service/player.service';
import { Router } from '@angular/router';
import { Role } from 'src/app/models/role/role';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css']
})
export class RegistrationComponent implements OnInit {

  login: LoginData;
  registered = false;
  form = new FormGroup({
    sex: new FormControl()
  });
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private router: Router,
              private loginService: LoginService, private playerService: PlayerService) {
                this.login = new LoginData();
                this.login.players = new Player();
                this.login.role = new Role();
                this.login.role.name = 'player';
                this.login.players.sex ='';

  }

  ngOnInit() {
    if (this.storage.get('login') != null) {
      this.login = this.storage.get('login');
    }
    console.log("bbbaaa", this.login);

    if (this.login.players == undefined ) {
                  this.login = new LoginData();
                  this.login.players = new Player();
                  this.login.role = new Role();
                  this.login.role.name = 'player';
                  this.login.players.sex = '';
                }
                else{
    console.log("aaa", this.login);
    this.form.setValue({sex:
       this.login.players.sex});
    }
  }
  onSubmit() {
    console.log(this.form.value);
    this.login.players.sex = this.form.get('sex').value;
    this.loginService.register(this.login).subscribe(r =>{ this.registered = true;
    this.router.navigateByUrl('/competitions')});
  }

}
