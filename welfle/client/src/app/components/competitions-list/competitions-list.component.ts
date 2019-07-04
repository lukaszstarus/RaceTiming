import { WebStorageService, LOCAL_STORAGE } from 'angular-webstorage-service';
import { HttpClient } from '@angular/common/http';
import { CompetitionService } from '../../services/competition-service/competition.service';
import { Competition } from '../../models/competition/competition';
import { Component, OnInit, Output, Inject } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { EventEmitter } from 'events';
import { LoginData } from 'src/app/models/login/login-data';

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
  login: LoginData;
  constructor(private competitionService: CompetitionService, private router: Router,
              @Inject(LOCAL_STORAGE) private storage: WebStorageService) {
  }


  ngOnInit() {
    this.login = this.storage.get('login');
    console.log(this.login);
    this.currentPage = 1;
    this.competitionService.findAll().subscribe(
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
