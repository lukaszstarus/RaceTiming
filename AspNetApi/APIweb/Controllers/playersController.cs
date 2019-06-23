using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using RaceTimingDataAccess;

namespace APIweb.Controllers
{
    public class playersController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // GET: api/players
        public IQueryable<player> Getplayers()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.players;
        }

        // GET: api/players/5
        [ResponseType(typeof(player))]
        public IHttpActionResult Getplayer(long id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            player player = db.players.Find(id);
            if (player == null)
            {
                return NotFound();
            }

            return Ok(player);
        }

        // PUT: api/players/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putplayer(long id, player player)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != player.id)
            {
                return BadRequest();
            }

            db.Entry(player).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!playerExists(id))
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

        // POST: api/players
        [ResponseType(typeof(player))]
        public IHttpActionResult Postplayer(player player)
        {
            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.players.Add(player);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (playerExists(player.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = player.id }, player);
        }

        // DELETE: api/players/5
        [ResponseType(typeof(player))]
        public IHttpActionResult Deleteplayer(long id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            player player = db.players.Find(id);
            if (player == null)
            {
                return NotFound();
            }

            db.players.Remove(player);
            db.SaveChanges();

            return Ok(player);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool playerExists(long id)
        {
            return db.players.Count(e => e.id == id) > 0;
        }
    }
}