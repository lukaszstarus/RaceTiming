import { Component, OnInit } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-old-competitions-list',
  templateUrl: './old-competitions-list.component.html',
  styleUrls: ['./old-competitions-list.component.css']
})
export class OldCompetitionsListComponent implements OnInit {

  competitions: Competition[];
  currentPage: number;
  pages: number[];
  totalPages: number;
  data: any[];
  competitionId: string;
  constructor(private competitionService: CompetitionService, private router: Router) {
      }


  ngOnInit() {
    this.currentPage = 1;
    this.competitionService.findOld().subscribe(
      (data: any) => {
       this.competitions = data;
    });
  }
  pagination(allPages: number) {
    this.pages = Array.from(Array(allPages).keys()).map(i => 1 + i);
    console.log(this.pages);
  }
  setPage(page: number) {
    this.currentPage = page;
    this.competitionService.findOld().subscribe(
      (data: any) => {
        this.competitions = data.content;
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
