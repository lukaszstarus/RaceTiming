import { Pageable } from './../pageable/pageable';
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

}
export interface Pageable{
  totalPages: string;
}
