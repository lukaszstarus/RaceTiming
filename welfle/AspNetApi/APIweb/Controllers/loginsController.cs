using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using RaceTimingDataAccess;

namespace APIweb.Controllers
{
    
    public class loginsController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // GET: api/logins
        public IQueryable<login> Getlogins()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.logins;
        }

        // GET: api/logins/5
        [ResponseType(typeof(login))]
        public async Task<IHttpActionResult> Getlogin(long id)
        {
            db.Configuration.ProxyCreationEnabled = false;  
            login login = await db.logins.FindAsync(id);
            if (login == null)
            {
                return NotFound();
            }

            return Ok(login);
        }

        // PUT: api/logins/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putlogin(long id, login login)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != login.id)
            {
                return BadRequest();
            }

            db.Entry(login).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!loginExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/logins
        [ResponseType(typeof(login))]
        public login Postlogin(login login)
        {
            db.Configuration.ProxyCreationEnabled = false;

            login newlogin = db.logins.SqlQuery("Select * from login where email=@p0 and password=@p1",login.email,login.password).FirstOrDefault();

            if (newlogin != null)
            {
           
                newlogin.role = db.roles.Find(newlogin.role_id.Value);
                newlogin.players = db.players.Find(newlogin.id);
                return newlogin;
            }

            return null;
        }

        // DELETE: api/logins/5
        [ResponseType(typeof(login))]
        public async Task<IHttpActionResult> Deletelogin(long id)
        {
            login login = await db.logins.FindAsync(id);
            if (login == null)
            {
                return NotFound();
            }

            db.logins.Remove(login);
            await db.SaveChangesAsync();

            return Ok(login);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool loginExists(long id)
        {
            return db.logins.Count(e => e.id == id) > 0;
        }
    }
}