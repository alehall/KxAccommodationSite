<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Registration Complete</h1>
    <p>Thank you for registering with the Student Accommodation Office at Imperial College London. An email has been sent to you with instructions on how to continue with your accommodation application.</p>
    <p>Back to <asp:HyperLink runat="server" ID="url1" NavigateUrl="http://www.imperial.ac.uk" Text="Imperial Home page" /></p>
    <div id="Nav" class="Clearfix CTA">
        <input type="button" value="Log Out" onclick="window.close()" cssclass="CallToAction" />
    </div>
</asp:Content>