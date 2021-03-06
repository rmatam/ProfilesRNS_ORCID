﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProfilesRNSDLL.BLL.ORCID.Interfaces
{
    public interface IORCID
    {
        void ReadORCIDProfile(BO.ORCID.Person person, BO.ORCID.PersonMessage personMessage, BO.ORCID.REFPermission refPermission, string loggedInInternalUsername);
        void SendORCIDXMLMessage(BO.ORCID.Person person, string accessToken, BO.ORCID.PersonMessage personMessage, BO.ORCID.REFPermission refPermission);
    }
}
