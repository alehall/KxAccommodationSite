<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <link href="<%= Page.ResolveUrl("~/resources/core/css/jquery-fancybox.min.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Page.ResolveUrl("~/resources/2016/css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6o8jI40Yz_EDJ6X5nULtrFwoTDU6l71o&sensor=false"></script>
    <script src="<%= Page.ResolveUrl("~/resources/core/js/jquery.fancybox.pack.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/core/js/kx.preferences.js?v=" + DateTime.Now.ToString("yyyyMMdd")) %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/2016/js/kx.preferences.setup.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).tooltip({ show: false });
    </script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server"> 
    
      
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="NextButton"><asp:Button CssClass="btn-primary btn pull-right" ID="KX_BC_RXA_RVNext" Text="Continue to Accept Offer" style="background-color:#379f9f" runat="server" /></span>        
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVBACK" Text="Back" runat="server" CssClass="btn-primary btn" style="background-color:#379f9f"/><br/></span>
        <span data-control="DeclineButton"><asp:Button ID="KX_BC_RXS_RVDECLINE" Text="Reject Offer" CssClass="btn btn-secondary btn-danger pull-right" runat="server" /></span>
        <div data-control="KXError"><div class="alert alert-danger"><asp:Literal runat="server" ID="KxError" /></div></div>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>

    </div>
    
    <%--END DATA CONTROLS--%> 
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNMyOfferEN_PNData" />

    <script type="text/javascript">
        var hubLink = $("li[data-nav='hub']"),
            currentNav = $("li[data-nav='true']");
        
        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVHub.ClientID%>').click();
        });

    </script>   
</asp:Content>