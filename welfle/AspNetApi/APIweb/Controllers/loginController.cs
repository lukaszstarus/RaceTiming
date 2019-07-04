using APIweb.Models;
using RaceTimingDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIweb.Controllers
{
    public class loginController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();
        // GET: api/login
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/login/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/login
        public Models.login Post([FromBody]Models.login login)
        {
            db.Configuration.ProxyCreationEnabled = false;

            // var ile = db.logins.Where(c => c.email == login.email)
            //     .Select(c => c.id);
            var ile = db.logins.SqlQuery("select * from login where email=@p0 and password=@p1", login.email, login.password).FirstOrDefault();

            
            {
                login.player = db.players.Find(ile);
                return login;
            }

            return null;

            //int count = db.logins.Count.SqlQuery("select count(id) from login where email=@p0 and password=@p1",login.email,login.password)
        }

        // PUT: api/login/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/login/5
        public void Delete(int id)
        {
        }
    }
}
