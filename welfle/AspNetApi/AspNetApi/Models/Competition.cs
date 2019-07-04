using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetApi.Models
{
    public class Competition
    {
        public long CompetitionId { get; set; }
        public string Name { get; set; }
        public string Place { get; set; }
        public string Discipline { get; set; }
        public DateTime Date { get; set; }
        public string Organizer { get; set; }
        public DateTime DeadlineDate { get; set; }
        public string Description { get; set; }
        public string RegUrl { get; set; }
        public long LimitOfPlayers { get; set; }
        public string ResultsUrl { get; set; }
    }
}
