<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <span data-control="logout1"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <span data-control="Nav">
            <asp:Button ID="KX_BC_RXA_RVNext" runat="server" Text="View Key Collection Pass" CssClass="btn btn-primary pull-right"  />
        </span>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNInductionComplete_PNData" />


</asp:Content>