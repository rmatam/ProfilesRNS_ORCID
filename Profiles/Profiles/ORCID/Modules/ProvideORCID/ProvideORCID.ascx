﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProvideORCID.ascx.cs"
    Inherits="Profiles.ORCID.Modules.ProvideORCID.ProvideORCID" %>
<asp:Label ID="lblErrors" runat="server" EnableViewState="false" CssClass="uierror" />
<div id="divProvideORCID" runat="server">
    <p>
        Please click on the '<asp:Label ID="lblButtonLabel" runat="server" />' button below.
        Once your credentials have been verified by ORCID, your ORCID identifier will be returned and
        associated with your user account.
    </p>
</div>
<div id="divORCIDAlreadyProvided" runat="server">
    <p>
        Your ORCID has already been associated with your user account.
    </p>
</div>
<br />
<asp:Button ID="btnLoginToORCID" runat="server" Text="Login to ORCID" OnClick="btnLoginToORCID_Click" />