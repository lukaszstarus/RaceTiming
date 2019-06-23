import { PlayerService } from './services/player-service/player.service';
import { CompetitionService } from './services/competition-service/competition.service';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CompetitionsListComponent } from './components/competitions-list/competitions-list.component';
import { HttpClientModule } from '@angular/common/http';
import { CompetitionDetailsComponent } from './components/competition-details/competition-details.component';
import { StorageServiceModule } from 'angular-webstorage-service';

@NgModule({
  declarations: [
    AppComponent,
    CompetitionsListComponent,
    CompetitionDetailsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    StorageServiceModule
  ],
  providers: [CompetitionService, PlayerService],
  bootstrap: [AppComponent]
})
export class AppModule { }
