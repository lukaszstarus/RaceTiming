import { CompetitionService } from '../../services/competition-service/competition.service';
import { Component, OnInit } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { PlayerService } from 'src/app/services/player-service/player.service';
import { Player } from 'src/app/models/player/player';

@Component({
  selector: 'app-competition-details',
  templateUrl: './competition-details.component.html',
  styleUrls: ['./competition-details.component.css']
})
export class CompetitionDetailsComponent implements OnInit {
  competition: Competition;
  ids=[1,2,3,4,5,6,7];
  constructor(private competitionService: CompetitionService, private playerService: PlayerService) { }

  ngOnInit() {
    this.competitionService.findById().subscribe(
      (data: any) => {
        this.competition = data;
        this.competition.Players = data.players;
        console.log(data); }
    );
    console.log("competition:"+ this.competition);
  }

}
