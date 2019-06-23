import { map } from 'rxjs/operators';
import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Competition } from '../../models/competition/competition';
import { LOCAL_STORAGE, WebStorageService } from "angular-webstorage-service";
import { inject } from '@angular/core/testing';

@Injectable({
  providedIn: 'root'
})
export class CompetitionService {
  competitionUrl: string;
  competitionDetailsUrl: string;
  competitionId:number;
  data: number;

  constructor(private http: HttpClient, @Inject(LOCAL_STORAGE) private storage:WebStorageService) {
    this.competitionUrl = 'http://localhost:8080/competitions/';
    this.competitionDetailsUrl = 'http://localhost:8080/competitiondetails/';
   }
   /**
    * findAll
    */
   public findAll() {
     return this.http.get(this.competitionUrl);
   }
   public findPaged(page: number) {
    return this.http.get(this.competitionUrl + page);
    }
    public findById() {
      this.getFromLocal("compId");
      return this.http.get(this.competitionDetailsUrl + this.data);
    }


saveInLocal(key, val): void {
  console.log('recieved= key:' + key + 'value:' + val);
  this.storage.set(key, val);
  this.data[key]= this.storage.get(key);
 }

getFromLocal(key): void {
    console.log('recieved= key:' + key);
    this.data= this.storage.get(key);
    console.log(this.data);
   }
}
