<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Session has Ended</h1>
    <p>Your session has ended, if this happened unexpectedly, please <a href="<%=System.Configuration.ConfigurationManager.AppSettings["CustomUrl1"] %>">Log back in</a>.</p>
    <p>Alternatively, you can go to the main <a href="<%=System.Configuration.ConfigurationManager.AppSettings["CustomUrl2"] %>">Imperial website</a>.</p>
</asp:Content>