<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPProceedWithApplication">
        <h1>Application complete</h1>
        <p>Thank you for completing your application online. We will contact you when we have found suitable accommodation for you...</p>
        <div id="Nav" class="Clearfix CTA">
            <asp:Button CssClass="CallToAction" runat="server" ID="url1" NavigateUrl="http://www.imperial.ac.uk" Text="Imperial Home page" />
        </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPDoNotProceedWithApplication">
        <h1>Application Cancelled</h1>
        <p>Thank you, if you choose to apply for accommodation at a later date, please return.</p>
        <div id="Nav" class="Clearfix CTA">
            <asp:Button runat="server" ID="HyperLink1" NavigateUrl="http://www.imperial.ac.uk" Text="Imperial Home page" />
        </div>
    </asp:PlaceHolder>
</asp:Content>