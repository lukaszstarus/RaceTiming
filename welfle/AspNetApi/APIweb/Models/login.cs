using RaceTimingDataAccess;

namespace APIweb.Models
{
    public class login
    {
        public string email { get; set; }
        public string password { get; set; }
        public player players { get; set; }
        public role role { get; set; }
    }
}