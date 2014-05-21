﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomEditORCID.ascx.cs"
    Inherits="Profiles.ORCID.Modules.CustomEditORCID.CustomEditORCID" %>
<%@ Register TagName="Options" TagPrefix="security" Src="~/Edit/Modules/SecurityOptions/SecurityOptions.ascx" %>
<%@ Register Src="~/ORCID/Modules/CreateMyORCID/CreateMyORCID.ascx" TagName="CreateMyORCID"
    TagPrefix="uc1" %>
<%@ Register Src="~/ORCID/Modules/ProvideORCID/ProvideORCID.ascx" TagName="ProvideORCID"
    TagPrefix="uc2" %>
<%@ Register Src="~/ORCID/Modules/UploadInfoToORCID/UploadInfoToORCID.ascx" TagName="UploadInfoToORCID"
    TagPrefix="uc3" %>

<asp:Panel ID="upnlEditSection" runat="server">
        <asp:HiddenField ID="hiddenSubjectID" runat="server" />
        
        <table id="tblEditORCID" width="100%">
            <tr>
                <td>
                    <asp:Literal runat="server" ID="litBackLink"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="padding: 10px 0px;">
                        <asp:Panel runat="server" ID="pnlSecurityOptions">
                            <security:Options runat="server" ID="securityOptions"></security:Options>
                        </asp:Panel>
                        <br />
                        <asp:Panel runat="server" ID="orcidtable">
                            <table width="100%">
                                <tr class="topRow editTable">
                                    <td>
                                        ORCID id
                                    </td>
                                </tr>
                                <tr class="editTable">
                                    <td style="padding: 5px 10px">
                                        <asp:Literal runat="server" ID="litORCIDID"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlORCIDProxy"> 
                            <!--ORCID does not support proxy functionality, creating an ORCID and uploading data to ORCID must be performed by the user,-->
                            ORCID does not support proxy functionality. As a proxy you may initialize an account for a researcher. 
                            When you click "Create ORCID" an email will be sent to the researcher inviting them to claim their ORCID. <br />
                            Once they follow the link in the email, they will be required to enter a password and agree to the ORCID terms and conditions.
                            An ORCID will then be created for them using the details entered on this page. <br /><br />
                            Currently proxies are unable to provide an existing ORCID, or to upload data to an ORCID
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlAddORCID">
                            <asp:ImageButton runat="server" ImageUrl="~/Framework/Images/icon_squareArrow.gif"
                                ID="imbCreateMyORCID" OnClick="imbCreateMyORCID_OnClick" />&nbsp; 
                            <asp:LinkButton runat="server" ID="lbCreateMyORCID" OnClick="imbCreateMyORCID_OnClick"
                                Text="Create ORCID"></asp:LinkButton>    
                             <br />
                            <asp:Panel runat="server" ID="pnlCreateMyORCID" Visible="false">
                                <uc1:CreateMyORCID ID="CreateMyORCID1" runat="server" />
                            </asp:Panel>
                            <asp:ImageButton runat="server" ImageUrl="~/Framework/Images/icon_squareArrow.gif"
                                ID="imbProvideMyORCID" OnClick="imbProvideMyORCID_OnClick" />&nbsp;
                            <asp:LinkButton runat="server" ID="lbProvideMyORCID" OnClick="imbProvideMyORCID_OnClick"
                                Text="Provide My ORCID"></asp:LinkButton>    
                             <br />
                            <asp:Panel runat="server" ID="pnlProvideMyORCID" Visible="false">
                                <uc2:ProvideORCID ID="ProvideORCID1" runat="server" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlEditORCID">
                            <asp:ImageButton runat="server" ImageUrl="~/Framework/Images/icon_squareArrow.gif"
                                ID="imbUploadToORCID" OnClick="imbUploadToORCID_OnClick" />&nbsp;
                            <asp:LinkButton runat="server" ID="lbUploadToORCID" OnClick="imbUploadToORCID_OnClick"
                                Text="Upload To ORCID"></asp:LinkButton>    
                             <br />
                            <asp:Panel runat="server" ID="pnlUploadToORCID" Visible="false">
                                <asp:Button ID="Button1" runat="server" OnClick="btnSubmitToORCID_Click" Text="Submit to ORCID Profile"
                                    Width="189px" />
                                <br />
                                <br />
                                <asp:Label ID="lblErrorsUpload" runat="server" EnableViewState="false" CssClass="uierror" />
                                <uc3:UploadInfoToORCID ID="UploadInfoToORCID1" runat="server" />
                                <br />
                                <asp:Button ID="btnSubmitToORCID" runat="server" OnClick="btnSubmitToORCID_Click"
                                    Text="Submit to ORCID Profile" Width="189px" />
                            </asp:Panel>   
                        </asp:Panel>
                        <asp:Panel runat="server" ID="pnlORCIDAdmin" Visible="false">
                        <h2>Admin Functions</h2>
                        These links allow system administrators to create a batch of ORCID identifiers, or alter the default visibility settings for data uploaded to ORCID. 
                        These links will not affect any data that has already been uploaded to ORCID.<br />
                            <asp:Literal runat="server" ID="litORCIDAdmin"></asp:Literal>
                        </asp:Panel>
                    </div>
                </td>
            </tr>
        </table>
</asp:Panel>