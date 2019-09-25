<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true"  CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationsClosedEN_PNData"></asp:Literal>
    
    <%--DATA CONTROLS--%>
    
    <div style="display: none">
       <span data-control="HubButton"><asp:Button runat="server" CssClass="ButtonBack ButtonSecondary" ID="KX_BC_RXS_RVBACK" Text="Back to My Details" /></span>
    </div>
</asp:Content>