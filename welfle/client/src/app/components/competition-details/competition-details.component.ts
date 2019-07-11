import { Category } from './../../models/category/category';
import { LoginData } from 'src/app/models/login/login-data';
import { Player } from 'src/app/models/player/player';
import { Router } from '@angular/router';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { Component, OnInit, Inject } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { CompetitionService } from 'src/app/services/competition-service/competition.service';
import { CompetitionPlayer } from 'src/app/models/competitonPlayer/competitionPlayer';

@Component({
  selector: 'app-competition-details',
  templateUrl: './competition-details.component.html',
  styleUrls: ['./competition-details.component.css']
})
export class CompetitionDetailsComponent implements OnInit {
  newPlayer: Player;
  login: LoginData;
  competition: Competition;
  date = new Date();
  old = false;
  signedIn = false;
  index: number;
  cP : CompetitionPlayer;
  constructor(private competitionService: CompetitionService, @Inject(LOCAL_STORAGE) private storage: WebStorageService,
              private router: Router) {
                this.competition = new Competition();
                this.competition.players = new Array<Player>();
                this.competition.date = new Date();
                this.competition.categories = new Array<Category>();
                this.cP = new CompetitionPlayer();
  }

  ngOnInit() {
    this.login = this.storage.get('login');
    console.log(this.login);
    this.competitionService.findById().subscribe(
      (data: any) => {
        this.competition = data;
        this.competition.players = data.players;
        if (this.date.getTime() > new Date(this.competition.date).getTime()) {
          this.old = true;
        }
        console.log(this.competition);
      });
    this.competitionService.findCompetitionPlayers(this.competition.id).subscribe(
      (data: any) =>{
        this.competition.players=data;
        //console.log(this.competition.players);
        if (this.competition.players.some(player => player.id === this.login.players.id)) {
          this.signedIn = true;
          //this.login.players = this.competition.players.find(player => player.id === this.login.players.id);

        }
      }
    )
    }
    signIn() {
      this.storage.set('competition', this.competition);
      //this.router.navigateByUrl('/chooseCategory');
      this.competition.players.push(this.login.players);
      this.competitionService.singToCompetitions(this.competition).subscribe(s => {
        this.ngOnInit();
      })
    }
  singOut(id: number) {
    if (confirm('Are you sure to sing out from ' + this.competition.name)) {
      this.index = this.competition.players.indexOf(this.competition.players.find(p => p.id === this.login.players.id));
      this.competition.players.splice(this.index, 1);
      this.competition.players.push(this.login.players);
      this.cP.comId=this.competition.id;
      this.cP.playerId=this.login.players.id;
      this.competitionService.singOutOfCompetitions(this.cP).subscribe(s => {
          this.signedIn = false;
          this.ngOnInit();
        });

    }


  }
  deleteEvent(){
    if(confirm("Are you sure to delete "+this.competition.name+" event?")) {
      this.competitionService.delete(this.competition.id).subscribe();
      this.router.navigateByUrl('/competitions');
      this.ngOnInit();
    }
  }

}
