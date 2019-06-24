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
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private route: Router) {}
  logout() {
    this.setInLocal('loggedIn', false);
    this.route.navigateByUrl('/login');
  }
  setInLocal(key, val) {
    this.storage.set(key, val);
  }
}
