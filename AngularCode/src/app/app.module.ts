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


@NgModule({
  declarations: [
    AppComponent,
    CompetitionsListComponent,
    CompetitionDetailsComponent,
    LoginFormComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    StorageServiceModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [CompetitionService, LoginService],
  bootstrap: [AppComponent]
})
export class AppModule { }
