﻿using System;
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
    public class categoriesController : ApiController
    {
        private RaceTimingEntities db = new RaceTimingEntities();

        // GET: api/categories
        public IQueryable<category> Getcategories()
        {
            db.Configuration.ProxyCreationEnabled = false;
            return db.categories;
        }

        // GET: api/categories/5
        [ResponseType(typeof(category))]
        public async Task<IHttpActionResult> Getcategory(long id)
        {
            category category = await db.categories.FindAsync(id);
            if (category == null)
            {
                return NotFound();
            }

            return Ok(category);
        }

        // PUT: api/categories/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> Putcategory(long id, category category)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != category.id)
            {
                return BadRequest();
            }

            db.Entry(category).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!categoryExists(id))
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

        // POST: api/categories
        [ResponseType(typeof(category))]
        public async Task<IHttpActionResult> Postcategory(category category)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.categories.Add(category);

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (categoryExists(category.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = category.id }, category);
        }

        // DELETE: api/categories/5
        [ResponseType(typeof(category))]
        public async Task<IHttpActionResult> Deletecategory(long id)
        {
            category category = await db.categories.FindAsync(id);
            if (category == null)
            {
                return NotFound();
            }

            db.categories.Remove(category);
            await db.SaveChangesAsync();

            return Ok(category);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool categoryExists(long id)
        {
            return db.categories.Count(e => e.id == id) > 0;
        }
    }
}