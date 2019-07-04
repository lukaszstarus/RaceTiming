import { AppPage } from './../../../../../e2e/src/app.po';
import { Component, OnInit, Inject } from '@angular/core';
import { Player } from 'src/app/models/player/player';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-my-competitions',
  templateUrl: './my-competitions.component.html',
  styleUrls: ['./my-competitions.component.css']
})
export class MyCompetitionsComponent implements OnInit {

  player: Player;
  currentPage: number;
  pages: number[];
  totalPages: number;

  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private router: Router,
              private competitionService: CompetitionService) { }

  ngOnInit() {
    this.currentPage = 1;
    this.player = this.storage.get('player');
    this.competitionService.findPlayersCompetitions(this.player.id)
        .subscribe((competitions: any) => {
          this.player.competitions = competitions.content;
          this.totalPages = competitions.totalPages;
          this.pagination(competitions.totalPages);
        });
  }

  pagination(allPages: number) {
    this.pages = Array.from(Array(allPages).keys()).map(i => 1 + i);
    console.log(this.pages);
  }
  setPage(page: number) {
    this.currentPage = page;
    this.competitionService.findPlayersCompetitions(this.player.id).subscribe(
      (data: any) => {
        this.player.competitions = data.content;
});
  }
    gotoDetails(id: number) {
    this.competitionService.competitionId = id;
    this.competitionService.saveInLocal('compId', id);
    this.router.navigateByUrl('/competitiondetails');
  }

}
