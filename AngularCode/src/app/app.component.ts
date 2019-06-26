import { WebStorageService } from 'angular-webstorage-service';
import { LOCAL_STORAGE } from 'angular-webstorage-service';
import { inject } from '@angular/core/testing';
import { Component, Inject } from '@angular/core';
import { HttpClient  } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'RaceTiming!!!!';
  isLoggedIn:boolean;
  isLoggedOut=!this.isLoggedIn;
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private route: Router) {
    this.isLoggedIn=this.storage.get("loggedIn");
  }
  logout() {
    this.setInLocal('loggedIn', false);
    this.isLoggedIn=false;
    this.isLoggedOut=true;
    window.location.reload();
    this.route.navigateByUrl('/login');
  }
  setInLocal(key, val) {
    this.storage.set(key, val);
  }
}
