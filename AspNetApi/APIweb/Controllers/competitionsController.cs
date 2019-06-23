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
    public class competitionsController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // GET: api/competitions
        public IQueryable<competition> Getcompetitions()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.competitions;
        }

        // GET: api/competitions/5
        [ResponseType(typeof(competition))]
        public async Task<IHttpActionResult> Getcompetition(long id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            competition competition = await db.competitions.FindAsync(id);
            if (competition == null)
            {
                return NotFound();
            }

            return Ok(competition);
        }

        // PUT: api/competitions/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putcompetition(long id, competition competition)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != competition.id)
            {
                return BadRequest();
            }

            db.Entry(competition).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!competitionExists(id))
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

        // POST: api/competitions
        [ResponseType(typeof(competition))]
        public async Task<IHttpActionResult> Postcompetition(competition competition)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.competitions.Add(competition);

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (competitionExists(competition.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = competition.id }, competition);
        }

        // DELETE: api/competitions/5
        [ResponseType(typeof(competition))]
        public async Task<IHttpActionResult> Deletecompetition(long id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            competition competition = await db.competitions.FindAsync(id);
            if (competition == null)
            {
                return NotFound();
            }

            db.competitions.Remove(competition);
            await db.SaveChangesAsync();

            return Ok(competition);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool competitionExists(long id)
        {
            return db.competitions.Count(e => e.id == id) > 0;
        }
    }
}