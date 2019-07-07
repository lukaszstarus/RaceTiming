using RaceTimingDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIweb.Controllers
{
    public class competitionPlayersController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();
        // GET: api/competitionPlayers
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/competitionPlayers/5
        public IEnumerable<player> Get(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.players.SqlQuery("select * from player p where p.id in (select players_id from competition_players where competition_id=@p0)", id).ToList<player>();
        }

        // POST: api/competitionPlayers
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/competitionPlayers/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/competitionPlayers/5
        public void Delete(int id)
        {
        }
    }
}
