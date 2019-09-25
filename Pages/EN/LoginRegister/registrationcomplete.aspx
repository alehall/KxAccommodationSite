<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Registration Complete</h1>
    <p>Thank you for registering with The Student Accommodation Office at Imperial College London. You will be emailed instructions so that you may continue with your application.</p>
    <p>To complete the registration process confirm by clicking the button below...</p>
    <div id="Nav" class="Clearfix CTA">
        <asp:Button ID="KX_BC_RXA_RVSENDME" runat="server" Text="Confirm Registration" CssClass="CallToAction" />
    </div>
</asp:Content>