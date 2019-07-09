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
        public IEnumerable<competition> Getcompetitions()
        {
            db.Configuration.ProxyCreationEnabled = false;
            DateTime now = new DateTime();
            now = DateTime.Now.Date;
            return db.competitions.SqlQuery("select * from competition where date>@p0",now).ToList<competition>().OrderBy(c => c.date);
        }

        // GET: api/competitions?old={old}
        public IEnumerable<competition> Getcompetitions(bool old)
        {
            db.Configuration.ProxyCreationEnabled = false;
            DateTime now = new DateTime();
            now = DateTime.Now.Date;
            if (old)
            {
                return db.competitions.SqlQuery("select * from competition where date<@p0", now).ToList<competition>().OrderBy(c => c.date);
            }
            return db.competitions.SqlQuery("select * from competition where date>@p0", now).ToList<competition>().OrderBy(c => c.date);
        }

        // GET: api/competitions?old={old}&searcg={search}
        public IEnumerable<competition> Getcompetitions(bool old, string search)
        {
            db.Configuration.ProxyCreationEnabled = false;
            search = '%' + search + '%';
            DateTime now = new DateTime();
            now = DateTime.Now.Date;
            return db.competitions.SqlQuery("select * from competition where (name like @p0 or place like @p1 or organizer like @p2 or dyscipline like @p3) and date<@p4", search, search, search, search,now).ToList<competition>().OrderBy(c => c.date);
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

        // GET: api/competitions/search
        public IEnumerable<competition> Getcompetition(string search,string date1,string date2)
        {
            db.Configuration.ProxyCreationEnabled = false;
            search = '%' +search + '%';
            if (date1==null)
            {
                date1 = DateTime.MinValue.ToString();
            }
            if (date2 == null)
            {
                date2 = DateTime.MaxValue.ToString();
            }
            IEnumerable<competition> com = db.competitions.SqlQuery("select * from Competition c where (name like @p0 or place like @p1 or organizer like @p2 or dyscipline like @p3) and date>@p4 and date<@p5", search, search, search, search,date1,date2).ToList<competition>().OrderBy(c => c.date);
            return com;
        }

        // GET: api/competitions/date
        public IEnumerable<competition> Getcompetition(string date1, string date2)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (date1 == null && date2 == null)
            {
                return null;
            }
            if (date1 == null || date1=="")
            {
                return db.competitions.SqlQuery("select * from competition where competition.date<@p0 ", date2).ToList<competition>().OrderBy(c => c.date);
            }
            if (date2 == null || date2 == "")
            {
                return db.competitions.SqlQuery("select * from competition where competition.date>@p0 ",date1).ToList<competition>().OrderBy(c => c.date);
            }
            return db.competitions.SqlQuery("select * from competition where competition.date>@p0 and competition.date<@p1", date1, date2).ToList<competition>().OrderBy(c => c.date);
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
            db.Database.ExecuteSqlCommand("exec deleteCompetition @p0;", id);
            db.SaveChangesAsync();
            competition competition =  db.competitions.Find(id);
            if (competition == null)
            {
                return NotFound();
            }

            db.competitions.Remove(competition);
            db.SaveChangesAsync();

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