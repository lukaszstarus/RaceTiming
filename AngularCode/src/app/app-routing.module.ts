import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CompetitionsListComponent } from './components/competitions-list/competitions-list.component';
const routes: Routes = [
  {path: 'competitions', component: CompetitionsListComponent},
  {path: '', pathMatch: 'full', redirectTo: 'competitions' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
