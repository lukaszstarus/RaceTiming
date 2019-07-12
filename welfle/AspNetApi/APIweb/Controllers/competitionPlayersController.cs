using APIweb.Models;
using RaceTimingDataAccess;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace APIweb.Controllers
{
    public class competitionPlayersController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // GET: api/competitionPlayers/5
        public IEnumerable<playerSigned> Get(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            IEnumerable<playerSigned> players =
                db.
                Database.
                SqlQuery<playerSigned>("select p.*,c.name as category from player p inner join player_category pc on pc.player_id=p.id inner join category c on  c.id=pc.categories_id where p.id in (select players_id from competition_players where competition_id=@p0) and pc.competitions_id=@p1", id, id).ToList<playerSigned>();
           return players;
        }

        // POST: api/competitionPlayers
        public void Post(Models.competitionPlayer cP)
        {
            db.Configuration.ProxyCreationEnabled = false;
            db.Database.ExecuteSqlCommand("delete from competition_players where competition_id=@p0 and players_id=@p1",cP.comId,cP.playerId);
            return;
        }

    }
}
