import { LOCAL_STORAGE, WebStorageService } from 'angular-webstorage-service';
import { Component, OnInit, Inject } from '@angular/core';
import { Player } from 'src/app/models/player/player';
import { PlayerService } from 'src/app/services/player-service/player.service';

@Component({
  selector: 'app-my-data',
  templateUrl: './my-data.component.html',
  styleUrls: ['./my-data.component.css']
})
export class MyDataComponent implements OnInit {
  player: Player;
  constructor(@Inject(LOCAL_STORAGE) private storage: WebStorageService, private playerService: PlayerService) {
  }

  ngOnInit() {
    this.player = this.storage.get('player');
  }
  onSubmit() {
    this.playerService.savePlayer(this.player).subscribe();
    this.storage.set('player', this.player);
  }
}
