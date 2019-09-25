<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">   
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>

        <span data-control="PayNowButton"><asp:Button runat="server" ID="KX_BC_RXS_RVPayNow" Text="Pay deposit online" CssClass="btn btn-primary pull-right" /></span>
        <span data-control="BackButton"><asp:Button runat="server" ID="KX_BC_RXS_RVMYDETAILS" Text="Back" CssClass="btn btn-secondary" /></span>
        <div data-control="KXError"><div class="alert alert-danger"><asp:Literal runat="server" ID="KxError" /></div></div>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNPaymentOptionEN_PNData" />

</asp:Content>