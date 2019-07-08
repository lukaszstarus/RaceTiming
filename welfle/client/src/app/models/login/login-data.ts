import { Role } from './../role/role';
import { Player } from '../player/player';

export class LoginData {
  email: string;
  password: string;
  players: Player;
  role: Role;

}
