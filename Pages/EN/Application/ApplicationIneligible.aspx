<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>

        <span data-control="NavButtons"><asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" CssClass="btn btn-default"  /></span>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationIneligibleEN_PNData" />

</asp:Content>