﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspNetApi.Models
{
    public class User
    {
        public long UserId { get; set; }
        public string Mail { get; set; }
        public long RoleId { get; set; }
    }
}
