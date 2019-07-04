import { Player } from '../player/player';
import { Category } from '../category/category';

export class Competition {
    id: string;
    name: string;
    place: string;
    dyscipline: string;
    date: Date;
    organizer: string;
    deadlineDate: string;
    description: string;
    regUrl: string;
    playersLimit: string;
    resultsUrl: string;
    totalPages: string;
    players: Array<Player>;
    categories: Array<Category>;

}
