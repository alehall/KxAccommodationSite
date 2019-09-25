<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true"  CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>   
    <div style="display:none;">
        <span data-control="TryAgainButton"><asp:Button ID="KX_BC_RXS_RVGOVALIDATE" runat="server" Text="Try Again" CssClass="btn btn-primary pull-right" /></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNValidationFailedEN_PNData"></asp:Literal> 

</asp:Content>