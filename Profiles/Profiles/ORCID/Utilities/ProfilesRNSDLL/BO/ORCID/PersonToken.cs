﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProfilesRNSDLL.BO.ORCID
{
    public partial class PersonToken
    {
        public bool IsExpired
        {
            get
            {
                return this.TokenExpirationIsNull || this.TokenExpiration < DateTime.Now;
            }
        }
    }
}
