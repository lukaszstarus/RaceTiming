import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Player } from 'src/app/models/player/player';

@Injectable({
  providedIn: 'root'
})
export class PlayerService {
playerUrl: string;
  constructor(private http: HttpClient) {
    this.playerUrl = 'http://localhost:8080/player';
   }

   public savePlayer(player: Player): Observable<any> {
      return this.http.post(this.playerUrl, player);
   }
}
