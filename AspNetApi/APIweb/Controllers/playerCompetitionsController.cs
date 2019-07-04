using RaceTimingDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIweb.Controllers
{
    public class playerCompetitionsController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();
        // GET: api/playerCompetitions
        public IEnumerable<string> Get()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return new string[] { "value1", "value2" };
        }

        // GET: api/playerCompetitions/5
        public IEnumerable<competition> Get(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.competitions.SqlQuery("select * from competition c where c.id in (select competitions_id from player_competitions where player_id=@p0)",id).ToList<competition>();
        }

        // POST: api/playerCompetitions
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/playerCompetitions/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/playerCompetitions/5
        public void Delete(int id)
        {
        }
    }
}
