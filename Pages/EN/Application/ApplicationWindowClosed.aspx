<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" CssClass="btn btn-secondary"  /></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationWindowClosedEN_PNData" />

</asp:Content>