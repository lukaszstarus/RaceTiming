import { CompetitionService } from './../../services/competition.service';
import { Component, OnInit } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';

@Component({
  selector: 'app-competition-details',
  templateUrl: './competition-details.component.html',
  styleUrls: ['./competition-details.component.css']
})
export class CompetitionDetailsComponent implements OnInit {
  competition: Competition;
  competitionId: number;

  constructor(private competitionService: CompetitionService) { }

  ngOnInit() {
    this.competitionService.findById(this.competitionId).subscribe(
      data => this.competition = data);


  }

}
