import { CompetitionService } from './services/competition-service/competition.service';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CompetitionsListComponent } from './components/competitions-list/competitions-list.component';
import { HttpClientModule } from '@angular/common/http';
import { CompetitionDetailsComponent } from './components/competition-details/competition-details.component';
import { StorageServiceModule } from 'angular-webstorage-service';
import { LoginFormComponent } from './components/login-form/login-form.component';
import { LoginService } from './services/login-service/login.service';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { MyCompetitionsComponent } from './components/my-competitions/my-competitions/my-competitions.component';
import { PlayerService } from './services/player-service/player.service';
import { OldCompetitionsListComponent } from './components/old-competitions-list/old-competitions-list.component';
import { AddCompetitionComponent } from './components/add-competition/add-competition.component';


@NgModule({
  declarations: [
    AppComponent,
    CompetitionsListComponent,
    CompetitionDetailsComponent,
    LoginFormComponent,
    MyCompetitionsComponent,
    OldCompetitionsListComponent,
    AddCompetitionComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    StorageServiceModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [CompetitionService, LoginService, PlayerService],
  bootstrap: [AppComponent]
})
export class AppModule { }
