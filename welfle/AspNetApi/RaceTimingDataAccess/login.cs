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
    
    public partial class login
    {
        
    
        public long id { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public Nullable<long> role_id { get; set; }
    
        public virtual role role { get; set; }
        
        public virtual player players { get; set; }
    }
}
