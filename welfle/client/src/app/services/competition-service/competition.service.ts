import { CompetitionsListComponent } from './../../components/competitions-list/competitions-list.component';
import { CompetitionSingInData } from './../../models/competitionSignInData/competition-sing-in-data';
import { map } from 'rxjs/operators';
import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Competition } from '../../models/competition/competition';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { inject } from '@angular/core/testing';
import { Player } from 'src/app/models/player/player';

@Injectable({
  providedIn: 'root'
})
export class CompetitionService {
  competitionUrl: string;
  competitionDetailsUrl: string;
  playerCompetitionsUrl: string;
  competitionId: number;
  data: number;

  constructor(
    private http: HttpClient,
    @Inject(LOCAL_STORAGE) private storage: WebStorageService
  ) {
    this.competitionUrl = 'http://localhost:50644/api/competitions';
    this.competitionDetailsUrl = 'http://localhost:50644/api/competitions';
    this.playerCompetitionsUrl = 'http://localhost:50644/api/playerCompetitions';
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
  public findOld(page: number) {
    return this.http.get(this.competitionUrl + page);
  }
  public findById() {
    return this.http.get(this.competitionDetailsUrl + '/' + this.storage.get('compId'));
  }
  public singToCompetitions(competition: Competition): Observable<any> {
    return this.http.post<any>(this.competitionDetailsUrl, competition);
  }
  public findPlayersCompetitions(id: number) {
    return this.http.get(this.playerCompetitionsUrl + '/' + id);
  }
  public add(competition: Competition) {

    return this.http.post(this.competitionUrl, competition);
  }

  saveInLocal(key: any, val: any): void {
    this.storage.set(key, val);
    this.data = this.storage.get(key);
  }

  getFromLocal(key: any): void {
    console.log('recieved= key:' + key);
    this.data = this.storage.get(key);
    console.log(this.data);
  }
}
