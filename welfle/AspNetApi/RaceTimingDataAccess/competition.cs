//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RaceTimingDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class competition
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public competition()
        {
            this.player_category = new HashSet<player_category>();
            this.player_category1 = new HashSet<player_category>();
            this.categories = new HashSet<category>();
            this.players = new HashSet<player>();
            this.players1 = new HashSet<player>();
        }
    
        public long id { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public Nullable<System.DateTime> deadline_date { get; set; }
        public string description { get; set; }
        public string dyscipline { get; set; }
        public string name { get; set; }
        public string organizer { get; set; }
        public string place { get; set; }
        public int players_limit { get; set; }
        public string reg_url { get; set; }
        public string results_url { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<player_category> player_category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<player_category> player_category1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<category> categories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<player> players { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<player> players1 { get; set; }
    }
}
