import { Pageable } from './../models/pageable/pageable';
import { map } from 'rxjs/operators';
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Competition } from '../models/competition/competition';

@Injectable({
  providedIn: 'root'
})
export class CompetitionService {
  competitionUrl: string;
  constructor(private http: HttpClient) {
    this.competitionUrl = 'http://localhost:8080/competitions/';
   }
   /**
    * findAll
    */
   public findAll(){
     return this.http.get(this.competitionUrl);
   }
   public findPaged(page:number){
    return this.http.get(this.competitionUrl+page);
  }
}
