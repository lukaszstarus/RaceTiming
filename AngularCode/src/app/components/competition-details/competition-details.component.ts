import { Player } from 'src/app/models/player/player';
import { CompetitionSingInData } from './../../models/competitionSignInData/competition-sing-in-data';
import { Router } from '@angular/router';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { CompetitionService } from '../../services/competition-service/competition.service';
import { Component, OnInit, Inject } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';

@Component({
  selector: 'app-competition-details',
  templateUrl: './competition-details.component.html',
  styleUrls: ['./competition-details.component.css']
})
export class CompetitionDetailsComponent implements OnInit {
  newPlayer: Player;
  competition: Competition;

  competitionSignInData: CompetitionSingInData = new CompetitionSingInData();
  constructor(private competitionService: CompetitionService, @Inject(LOCAL_STORAGE) private storage: WebStorageService,
  private router: Router) {
    this.competition.Players = new Array<Player>();
  }

  ngOnInit() {
    this.competitionService.findById().subscribe(
      (data: any) => {
        this.competition = data;
        this.competition.Players = data.players;
      });
  }
  signIn() {
    this.newPlayer = this.storage.get('player');
    if (!this.competition.Players.some(player=>player.id===this.newPlayer.id)){
      this.competition.Players.push(this.newPlayer);
      this.competitionService.singToCompetitions(this.competition).subscribe(sth => this.router.navigateByUrl('/competitiondetails'));
    } else {console.log('already exist in this competitions');}
  }

}
