import { CompetitionDetailsComponent } from './components/competition-details/competition-details.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CompetitionsListComponent } from './components/competitions-list/competitions-list.component';
import { LoginFormComponent } from './components/login-form/login-form.component';
const routes: Routes = [
  {path: 'competitions', component: CompetitionsListComponent},
  {path: 'competitiondetails', component: CompetitionDetailsComponent},
  {path: 'login', component: LoginFormComponent},

  {path: '', pathMatch: 'full', redirectTo: 'competitions' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
