import { Pageable } from './../../models/pageable/pageable';
import { HttpClient } from '@angular/common/http';
import { CompetitionService } from './../../services/competition.service';
import { Competition } from '../../models/competition/competition';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-competitions-list',
  templateUrl: './competitions-list.component.html',
  styleUrls: ['./competitions-list.component.css']
})
export class CompetitionsListComponent implements OnInit {

  competitions: Competition[];
  currentPage: number;
  pages:number[];
  totalPages:number;
  constructor(private competitionService: CompetitionService) {
  }


  ngOnInit() {
    this.currentPage=1;
    this.competitionService.findAll().subscribe(
      data => {console.log(data.totalPages);
               this.competitions = data.content;
               this.totalPages=data.totalPages;
               this.pagination(data.totalPages);
      });

  }
  pagination(allPages:number){
    this.pages = Array.from(Array(allPages).keys()).map(i=>1+i);
    console.log(this.pages);
  }
  setPage(page: number){
    this.currentPage=page;
    this.competitionService.findPaged(page).subscribe(
      data => {
        this.competitions = data.content;
        this.totalPages=data.totalPages;
        this.pagination(data.totalPages);
});
  }

}
