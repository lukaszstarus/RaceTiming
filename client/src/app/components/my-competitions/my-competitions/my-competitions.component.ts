import { Competition } from 'src/app/models/competition/competition';
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
  currentPage: number;
  pages: number[];
  totalPages: number;
  competition: Competition;
  index:number;
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private router: Router,
              private competitionService: CompetitionService) {
                this.competition= new Competition();
                this.competition.players= new Array<Player>();
               }

  ngOnInit() {
    this.currentPage = 1;
    this.login = this.storage.get('login');
    console.log(this.login);
    this.competitionService.findPlayersCompetitions(this.login.player.id, 1)
        .subscribe((competitions: any) => {
          this.login.player.competitions = competitions.content;
          this.totalPages = competitions.totalPages;
          this.pagination(competitions.totalPages);
        });
  }

  pagination(allPages: number) {
    this.pages = Array.from(Array(allPages).keys()).map(i => 1 + i);
  }
  setPage(page: number) {
    this.currentPage = page;
    this.competitionService.findPlayersCompetitions(this.login.player.id, page).subscribe(
      (data: any) => {
        this.login.player.competitions = data.content;
        this.totalPages = data.totalPages;
        this.pagination(data.totalPages);
    });
  }
    gotoDetails(id: number) {
    this.competitionService.competitionId = id;
    this.competitionService.saveInLocal('compId', id);
    this.router.navigateByUrl('/competitiondetails');
  }


}
