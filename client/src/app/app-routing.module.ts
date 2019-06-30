import { OldCompetitionsListComponent } from './components/old-competitions-list/old-competitions-list.component';
import { MyCompetitionsComponent } from './components/my-competitions/my-competitions/my-competitions.component';
import { MyDataComponent } from './components/my-data/my-data/my-data.component';
import { CompetitionDetailsComponent } from './components/competition-details/competition-details.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CompetitionsListComponent } from './components/competitions-list/competitions-list.component';
import { LoginFormComponent } from './components/login-form/login-form.component';
const routes: Routes = [
  {path: 'competitions', component: CompetitionsListComponent},
  {path: 'competitiondetails', component: CompetitionDetailsComponent},
  {path: 'login', component: LoginFormComponent},
  {path: 'my-data', component: MyDataComponent},
  {path: 'my-competitions', component: MyCompetitionsComponent},
  {path: 'oldcompetitions', component: OldCompetitionsListComponent},
  {path: '', pathMatch: 'full', redirectTo: 'competitions' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
