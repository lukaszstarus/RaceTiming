import { Competition } from './../../models/competition/competition';
import { Component, OnInit, Inject } from '@angular/core';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { LoginData } from 'src/app/models/login/login-data';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-choose-category',
  templateUrl: './choose-category.component.html',
  styleUrls: ['./choose-category.component.css']
})
export class ChooseCategoryComponent implements OnInit {
  selected: string;
  competition: Competition;
  login: LoginData;
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService,
              private router: Router, private competitionService: CompetitionService) {
    this.competition = this.storage.get('competition');
  }

  ngOnInit() {
  }
  Submit() {
    this.login = this.storage.get('login');
    this.login.player.category = this.selected;
    this.competition.players.push(this.login.player);
    this.competitionService.singToCompetitions(this.competition).subscribe(
      () => this.router.navigateByUrl('/competitiondetails')
    );

  }

}
