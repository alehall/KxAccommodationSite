<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">   
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <div data-control="RejectReason"><asp:RadioButtonList runat="server" ID="KX_PCUSERWEBPND_PNRejectedReason_LUSSREASONLOOKUP_DTRejectReason_MO1" AutoPostBack="true" RepeatDirection="Vertical" RepeatLayout="Flow"></asp:RadioButtonList></div><div class="clearfix"></div>
        <div data-control="OtherInfo"><asp:TextBox runat="server" ID="KX_PCSAYAPPUDF_UD87_PNFieldValue_MO1_DTAdditionalInfo" Rows="3" TextMode="MultiLine" Width="800px"></asp:TextBox></div><br />
        <span data-control="Acknowledgement"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD86_PNFieldValue_DTAcknowledgement_MO1_CR1" /></span>
        <span data-control="BackButton"><asp:Button runat="server" ID="KX_BC_RXS_RVMYDETAILS" Text="Back" CssClass="btn btn-secondary" /></span>
        <span data-control="RejectButton"><asp:Button runat="server" Text="Decline my offer" ID="KX_BC_RXA_RVREJECT" CssClass="btn btn-primary pull-right" /></span>       
        <span data-control="ErrorMsg"><div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div></span>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNOfferDeclineEN_PNData" />

</asp:Content>