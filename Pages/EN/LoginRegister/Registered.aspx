<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>   
    <div style="display:none;">
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVGOLOGIN" runat="server" CssClass="btn btn-secondary" Text="Back" /></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNRegisteredEN_PNData"></asp:Literal>

</asp:Content>