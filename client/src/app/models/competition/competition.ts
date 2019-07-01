import { Player } from '../player/player';
import { Category } from '../category/category';

export class Competition {
    Id: string;
    Name: string;
    Place: string;
    Dyscipline: string;
    Date: Date;
    Organizer: string;
    DeadlineDate: string;
    Description: string;
    RegUrl: string;
    PlayersLimit: string;
    ResultsUrl: string;
    TotalPages: string;
    Players: Array<Player>;
    Categories: Array<Category>;

}
