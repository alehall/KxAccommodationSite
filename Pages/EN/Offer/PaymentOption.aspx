<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNPaymentOptionEN_PNData" />
    <%--DATA CONTROLS--%>
    <div style="display: none">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="PayNowButton"><asp:Button runat="server" ID="KX_BC_RXS_RVPayNow" Text="Pay deposit online" CssClass="ButtonNext ButtonPrimary" /></span>
        <span data-control="PayOtherButton"><asp:Button runat="server" ID="KX_BC_RXS_RVPayOther" Text="Pay by other means" CssClass="ButtonNext ButtonPrimary" /></span>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
    </div>

</asp:Content>