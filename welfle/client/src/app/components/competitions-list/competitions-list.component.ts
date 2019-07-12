import { WebStorageService, LOCAL_STORAGE } from 'angular-webstorage-service';
import { HttpClient } from '@angular/common/http';
import { CompetitionService } from '../../services/competition-service/competition.service';
import { Competition } from '../../models/competition/competition';
import { Component, OnInit, Output, Inject } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { EventEmitter } from 'events';
import { LoginData } from 'src/app/models/login/login-data';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-competitions-list',
  templateUrl: './competitions-list.component.html',
  styleUrls: ['./competitions-list.component.css']
})
export class CompetitionsListComponent implements OnInit {

  competitions: Competition[];
  data: any[];
  competitionId: string;
  login: LoginData;
  date1: Date;
  date2: Date;
  queryField: FormControl = new FormControl();
  constructor(private competitionService: CompetitionService, private router: Router,
              @Inject(LOCAL_STORAGE) private storage: WebStorageService) {
  }


  ngOnInit() {
    this.login = this.storage.get('login');
    console.log(this.login);
    this.competitionService.findAll().subscribe(
      (data: any) => {
        this.competitions = data;
    });
    this.queryField.valueChanges.subscribe(queryField => {
      this.competitionService.findField(queryField,this.date1,this.date2).subscribe((data: any) => {
        this.competitions = data;
      });
    });

  }

  dateFilter(){
    if(this.date1!=null && this.date2!=null){
      this.competitionService.findBetween(this.date1,this.date2).subscribe((data:any) =>{
        this.competitions = data;
      });
    }
    else if(this.date1!=null){
      this.competitionService.findAfter(this.date1).subscribe((data:any) =>{
        this.competitions = data;
      });
    }
    else if(this.date2!=null){
      this.competitionService.findBefore(this.date2).subscribe((data:any) =>{
        this.competitions = data;
      });
    }
  }
  clearDate(){
    this.date1=null;
    this.date2=null;
    this.ngOnInit();
  }
  gotoDetails(id: number) {
    this.competitionService.competitionId = id;
    this.competitionService.saveInLocal('compId', id);
    this.router.navigateByUrl('/competitiondetails');
  }

}
