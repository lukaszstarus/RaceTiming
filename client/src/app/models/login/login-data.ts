import { Role } from './../role/role';
import { Player } from '../player/player';

export class LoginData {
  email: string;
  password: string;
  player: Player;
  role: Role;

}
