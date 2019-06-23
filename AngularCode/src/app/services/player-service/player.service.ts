import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Player } from 'src/app/models/player/player';

@Injectable()
export class PlayerService {
  playerUrl = 'localhost:8080/players/';
  competitionId: number;
  constructor(private http: HttpClient) { }

  public findByCompetitionId(): Observable<Player[]> {
    return this.http.get<Player[]>(this.playerUrl + 91);
  }
}
