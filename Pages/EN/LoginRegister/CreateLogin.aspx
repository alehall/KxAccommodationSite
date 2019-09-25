<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <fieldset>
        <legend><span>Email Address</span></legend>
        <p>Throughout the application process we will be contacting you via email. Please enter a permanent email address that you will use.</p>
        <ol>
            <li>
                <asp:Label runat="server" ID="lbl1" AssociatedControlID="KX_PCREGMGR_PNEmailAddress_MO1" Text="Email" />
                <asp:TextBox ID="KX_PCREGMGR_PNEmailAddress_MO1" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl2" AssociatedControlID="KX_PCREGMGR_PNConfirmEmailAddress_MO1" Text="Confirm Email" />
                <asp:TextBox ID="KX_PCREGMGR_PNConfirmEmailAddress_MO1" runat="server" />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend><span>Login & Password</span></legend>
        <p>Please create a login (Username) and password.</p>
        <p>Please note your Username should be at least five characters long and your password should be at least six characters long and contain at least one number, one uppercase character and one lowercase character.</p>
        <ol>
            <li>
                <asp:Label runat="server" ID="lbl3" AssociatedControlID="KX_PCREGMGR_PNUserName_MO1" Text="Username" />
                <asp:TextBox ID="KX_PCREGMGR_PNUserName_MO1" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl4" AssociatedControlID="KX_PCREGMGR_PNPassword_MO1" Text="Password" />
                <asp:TextBox ID="KX_PCREGMGR_PNPassword_MO1" TextMode="password" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl5" AssociatedControlID="KX_PCREGMGR_PNConfirmPassword_MO1" Text="Confirm Password" />
                <asp:TextBox ID="KX_PCREGMGR_PNConfirmPassword_MO1" TextMode="password" runat="server" />
            </li>
        </ol>
    </fieldset>
    <div id="Nav" class="Clearfix">
        <asp:Button ID="KX_BC_RXB_RVBACK" runat="server" CssClass="Back" Text="Back" />
        <asp:Button ID="KX_BC_RXA_RVUPDATEUSER" runat="server" Text="Next" CssClass="Next" />
    </div>
</asp:Content>