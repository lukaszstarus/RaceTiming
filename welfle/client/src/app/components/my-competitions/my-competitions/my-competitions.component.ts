import { AppPage } from './../../../../../e2e/src/app.po';
import { Component, OnInit, Inject } from '@angular/core';
import { Player } from 'src/app/models/player/player';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { Router } from '@angular/router';
import { LoginData } from 'src/app/models/login/login-data';

@Component({
  selector: 'app-my-competitions',
  templateUrl: './my-competitions.component.html',
  styleUrls: ['./my-competitions.component.css']
})
export class MyCompetitionsComponent implements OnInit {

  login: LoginData;

  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private router: Router,
              private competitionService: CompetitionService) { }

  ngOnInit() {
    this.login = this.storage.get('login');
    this.competitionService.findPlayersCompetitions(this.login.players.id)
        .subscribe((competitions: any) => {
          this.login.players.competitions = competitions;
        });
  }

    gotoDetails(id: number) {
    this.competitionService.competitionId = id;
    this.competitionService.saveInLocal('compId', id);
    this.router.navigateByUrl('/competitiondetails');
  }

}
