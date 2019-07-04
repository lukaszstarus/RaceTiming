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
  registerUrl: string;
  constructor(private http: HttpClient) {
    this.loginUrl = 'http://localhost:50644/api/logins';
    this.registerUrl = 'http://localhost:8080/register';
   }

   login(login: LoginData): Observable<Player> {
      return this.http.post<Player>(this.loginUrl, login);
   }
   register(login: LoginData) {
     return this.http.post(this.registerUrl, login);
   }
}
