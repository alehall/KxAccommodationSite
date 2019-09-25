<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Password Reset</h1>
    <p>Your password has been reset and you can use it to Login.</p>
    <p>For your information your user name is: <strong><asp:Literal runat="server" ID="KX_PCREGMGR_PNUserName" /></strong></p>
    <div id="Nav" class="Clearfix CTA">
        <asp:Button ID="KX_BC_RXA_RVGOLOGIN" runat="server" Text="Continue" CssClass="CallToAction" />
    </div>
</asp:Content>