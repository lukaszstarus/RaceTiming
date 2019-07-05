import { Category } from './../../models/category/category';
import { LoginData } from 'src/app/models/login/login-data';
import { Player } from 'src/app/models/player/player';
import { Router } from '@angular/router';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { Component, OnInit, Inject } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';

@Component({
  selector: 'app-competition-details',
  templateUrl: './competition-details.component.html',
  styleUrls: ['./competition-details.component.css']
})
export class CompetitionDetailsComponent implements OnInit {
  newPlayer: Player;
  login: LoginData;
  competition: Competition;
  date = new Date();
  old = false;
  signedIn = false;
  index: number;
  constructor(private competitionService: CompetitionService, @Inject(LOCAL_STORAGE) private storage: WebStorageService,
              private router: Router) {
                this.competition = new Competition();
                this.competition.players = new Array<Player>();
                this.competition.date = new Date();
                this.competition.categories = new Array<Category>();
  }

  ngOnInit() {
    this.login = this.storage.get('login');
    this.competitionService.findById().subscribe(
      (data: any) => {
        this.competition = data;
        this.competition.players = data.players;
        if (this.date.getTime() > new Date(this.competition.date).getTime()) {
          this.old = true;
        }
        if (this.competition.players.some(player => player.id === this.login.player.id)) {
          this.signedIn = true;
          this.login.player = this.competition.players.find(player => player.id === this.login.player.id);
          console.log(this.login.player);
        }
      });
    }
    signIn() {
      this.storage.set('competition', this.competition);
      this.router.navigateByUrl('/chooseCategory');
  }
  singOut(id: number) {
    if (confirm('Are you sure to sing out from ' + this.competition.name)) {
      this.index = this.competition.players.indexOf(this.competition.players.find(p => p.id === this.login.player.id));
      this.competition.players.splice(this.index, 1);
      this.competition.players.push(this.login.player);
      this.competitionService.singOutOfCompetitions(this.competition).subscribe(s => {
          this.signedIn = false;
          this.ngOnInit();
        });

    }

  }

}
