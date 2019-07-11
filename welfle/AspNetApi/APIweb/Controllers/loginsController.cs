using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
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
            string hash = @"foxle@rn";

            if (login.players == null)
            {

                


                login newlogin = db.logins.SqlQuery("Select * from login where email=@p0", login.email).FirstOrDefault();

                byte[] data = Convert.FromBase64String(newlogin.password);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripleDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripleDes.CreateDecryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        newlogin.password = UTF8Encoding.UTF8.GetString(results);
                    }
                }

                if (newlogin.password == login.password)
                {

                    newlogin.role = db.roles.Find(newlogin.role_id.Value);
                    newlogin.players = db.players.Find(newlogin.id);
                    return newlogin;
                }
            }
            else
            {



                byte[] data = UTF8Encoding.UTF8.GetBytes(login.password);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripleDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripleDes.CreateEncryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        login.password = Convert.ToBase64String(results);
                    }
                }
                login.role_id = 1;
                db.Database.ExecuteSqlCommand("exec [registrationPlater] @p0,@p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10,  @p11", login.email, login.password, login.role_id, login.players.name, login.players.surname, login.players.birth_date, login.players.city, login.players.country, login.players.license, login.players.team, login.players.sex, login.players.phone);

                db.SaveChanges();
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