<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">    
    <%--START DATA CONTROLS--%>    
    <div style="display:none;">
        <div data-control="KXError"><div class="alert-danger"><asp:Literal runat="server" ID="KxError" /></div></div>
        <span data-control="Username"><asp:TextBox ID="KX_PCLDAPMGR_PNUserName_MO1" CssClass="form-control" runat="server" placeholder="Username" /></span>
        <span data-control="Password"><asp:TextBox ID="KX_PCLDAPMGR_PNPassword_MO1" CssClass="form-control" TextMode="password" runat="server" placeholder="Password"></asp:TextBox></span>
        <span data-control="LoginButton"><asp:Button ID="KX_BC_RXA_RVLOGIN" runat="server" Text="Login" CssClass="btn btn-primary pull-right" /></span>
        
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/LoginAndHome.jpg")%>' alt="Login Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNLoginEN_PNData" />    
    
</asp:Content>