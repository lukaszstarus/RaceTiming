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
  competitionDetailsUrl: string;

  constructor(private http: HttpClient) {
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
  public findById(id: number): Observable<Competition> {
    return this.http.get<Competition>(this.competitionDetailsUrl + id);
  }
}
