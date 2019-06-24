import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { LoginData } from 'src/app/models/login/login-data';
import { Player } from 'src/app/models/player/player';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  loginUrl: string;
  constructor(private http: HttpClient) {
    this.loginUrl = 'http://localhost:8080/login';
   }

   login(login: LoginData): Observable<Player> {
      return this.http.post<Player>(this.loginUrl, login);
   }
}
