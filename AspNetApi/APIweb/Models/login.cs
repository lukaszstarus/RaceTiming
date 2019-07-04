using RaceTimingDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIweb.Models
{
    public class login
    {
        public string email { get; set; }
        public string password { get; set; }
        public player player { get; set; }
        public role role { get; set; }
    }
}