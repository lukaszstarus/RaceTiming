import { StringifyOptions } from 'querystring';
import { Competition } from '../competition/competition';

export class Player {
id: number;
name: string;
surname: string;
city: string;
birthDate: string;
country: string;
sex: string;
phone: string;
team: string;
license: string;
competitions: Array<Competition>;
}
