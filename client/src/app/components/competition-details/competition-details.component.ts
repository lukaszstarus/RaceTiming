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
  competition: Competition;

  constructor(private competitionService: CompetitionService, @Inject(LOCAL_STORAGE) private storage: WebStorageService,
              private router: Router) {
  }

  ngOnInit() {
    this.competition = new Competition();
    this.competition.Players= new Array<Player>();
    this.competitionService.findById().subscribe(
      (data: any) => {
        console.log(data);
        this.competition = data;
        this.competition.Players = data.players;
      });
  }
  signIn() {
    this.newPlayer = this.storage.get('player');
    if (!this.competition.Players.some(player => player.id === this.newPlayer.id)) {
      this.competition.Players.push(this.newPlayer);
      this.competitionService.singToCompetitions(this.competition).subscribe(sth => this.router.navigateByUrl('/competitiondetails'));
    } else {console.log('already exist in this competitions'); }
  }

}
