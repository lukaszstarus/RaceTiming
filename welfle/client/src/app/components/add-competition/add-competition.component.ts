import { Component, OnInit, Inject } from '@angular/core';
import { Competition } from 'src/app/models/competition/competition';
import { AppComponent } from 'src/app/app.component';
import { Router } from '@angular/router';
import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { CompetitionService } from '../../services/competition-service/competition.service';

@Component({
  selector: 'app-add-competition',
  templateUrl: './add-competition.component.html',
  styleUrls: ['./add-competition.component.css']
})
export class AddCompetitionComponent implements OnInit {
  competition: Competition;
  constructor(private competitionService: CompetitionService, private app: AppComponent,
    private router: Router, @Inject(LOCAL_STORAGE) private storage: WebStorageService) {
      this.competition = new Competition();
    }
    ngOnInit() {
    }

    onSubmit() {
      console.log(this.competition);
      this.competitionService.add(this.competition).subscribe((data: any) => {

      });

    }
    saveInLocal(key, val): void {
      console.log('recieved= key:' + key + 'value:' + val);
      this.storage.set(key, val);
      }
  }
