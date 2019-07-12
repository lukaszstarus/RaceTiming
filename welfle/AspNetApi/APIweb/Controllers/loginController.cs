using APIweb.Models;
using RaceTimingDataAccess;
using System.Linq;
using System.Web.Http;

namespace APIweb.Controllers
{
    public class loginController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // POST: api/login
        public Models.login Post([FromBody]Models.login login)
        {
            db.Configuration.ProxyCreationEnabled = false;

            var ile = db.logins.SqlQuery("select * from login where email=@p0 and password=@p1", login.email, login.password).FirstOrDefault();

            {
                login.players = db.players.Find(ile);
                return login;
            }

            return null;

        }

    }
}
