import { Player } from '../player/player';

export interface Competition {
    Id: string;
    Name: string;
    Place: string;
    Dyscipline: string;
    Date: string;
    Organizer: string;
    DeadlineDate: string;
    Description: string;
    RegUrl: string;
    PlayersLimit: string;
    ResultsUrl: string;
    TotalPages: string;
    Players: Player[];

}
