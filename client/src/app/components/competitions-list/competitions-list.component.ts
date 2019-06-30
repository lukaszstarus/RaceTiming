import { HttpClient } from '@angular/common/http';
import { CompetitionService } from '../../services/competition-service/competition.service';
import { Competition } from '../../models/competition/competition';
import { Component, OnInit, Output } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { EventEmitter } from 'events';

@Component({
  selector: 'app-competitions-list',
  templateUrl: './competitions-list.component.html',
  styleUrls: ['./competitions-list.component.css']
})
export class CompetitionsListComponent implements OnInit {

  competitions: Competition[];
  currentPage: number;
  pages: number[];
  totalPages: number;
  data: any[];
  competitionId: string;
  date: Date;
  upcomingCompetitions: Array<Competition>;
  pastCompetitions: Array<Competition>;
  constructor(private competitionService: CompetitionService, private router: Router) {
    this.date = new Date();
    this.upcomingCompetitions = new Array();
    this.pastCompetitions = new Array();
  }


  ngOnInit() {
    this.currentPage = 1;
    this.competitionService.findAll().subscribe(
      (data: any) => {console.log(data.totalPages);
                      this.competitions = data.content;
                      this.totalPages = data.totalPages;
                      this.pagination(data.totalPages);
    });
  }
  pagination(allPages: number) {
    this.pages = Array.from(Array(allPages).keys()).map(i => 1 + i);
    console.log(this.pages);
  }
  setPage(page: number) {
    this.currentPage = page;
    this.competitionService.findPaged(page).subscribe(
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
