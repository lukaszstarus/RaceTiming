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
  signedIn=false;
  constructor(private competitionService: CompetitionService, @Inject(LOCAL_STORAGE) private storage: WebStorageService,
              private router: Router) {
                this.competition = new Competition();
                this.competition.Players = new Array<Player>();
                this.competition.date= new Date();
  }

  ngOnInit() {
    this.login= this.storage.get('login');
    this.competitionService.findById().subscribe(
      (data: any) => {
        this.competition = data;
        this.competition.Players = data.players;
        if (this.date.getTime() > new Date(this.competition.date).getTime()) {
          this.old = true;
        }
        if (this.competition.Players.some(player => player.id === this.login.player.id)) {
          this.signedIn = true;
        }
      });
    }
    signIn() {
      this.competition.Players.push(this.login.player);
      this.competitionService.singToCompetitions(this.competition).subscribe(sth => this.router.navigateByUrl('/competitiondetails'));
  }

}
