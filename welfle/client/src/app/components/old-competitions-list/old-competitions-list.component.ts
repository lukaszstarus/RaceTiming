import { Component, OnInit } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { Router } from '@angular/router';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-old-competitions-list',
  templateUrl: './old-competitions-list.component.html',
  styleUrls: ['./old-competitions-list.component.css']
})
export class OldCompetitionsListComponent implements OnInit {

  competitions: Competition[];
  data: any[];
  competitionId: string;
  queryField: FormControl = new FormControl();
  constructor(private competitionService: CompetitionService, private router: Router) {
      }


  ngOnInit() {
    this.competitionService.findOld().subscribe(
      (data: any) => {
       this.competitions = data;
    });
    this.queryField.valueChanges.subscribe(queryField => {
      this.competitionService.findOldField(queryField).subscribe((data: any) => {
        this.competitions = data;
      });
    });
  }
    gotoDetails(id: number) {
    this.competitionService.competitionId = id;
    this.competitionService.saveInLocal('compId', id);
    this.router.navigateByUrl('/competitiondetails');
  }

}
