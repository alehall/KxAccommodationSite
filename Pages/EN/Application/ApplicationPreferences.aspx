<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

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
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    
    <asp:Literal runat="server"  ID="KX_PCRESOURCE_RNApplicationPreferencesEN_PNData"></asp:Literal>
    
    <div style="display: none">
        <span data-control="HubButton"><asp:Button runat="server" ID="KX_BC_RXS_RVHub" CssClass="DATAHubbutton"/></span>
        <span data-control="WelcomeButton"><asp:Button runat="server" ID="KX_BC_RXS_RVWelcome" CssClass="DATAWelcomeButton"/></span>
        <span data-control="Logout"><asp:Button runat="server" ID="KX_BC_RXS_RVLogout" CssClass="DATALogout"/></span>
        <span data-control="ConfirmCheckBox"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD123_PNFieldValue_CR1_CVYes_UVNo_DTUnderstandSPCpreferencesSPCareSPCnotSPCguaranteed" /></span>
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default col-xs-12 col-md-5" /></span>
        <span data-control="GoButton"><asp:Button ID="KX_BC_RXA_RVGo" runat="server" Text="Next" class="btn btn-primary col-xs-12 col-md-5 pull-right" /></span>
        <span data-control="KXError"><asp:Literal ID="KXError" runat="server"></asp:Literal></span>
        
        <div data-control="PreferenceRepeater">
            <asp:PlaceHolder ID="phPreferenceResults" runat="server" />
        </div>
        
        
        <asp:PlaceHolder ID="phPreferenceTemplate" runat="server">
            <div control-container="1">
                <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationPreferenceRowEN_PNData"/>
           
                <div style="display: none">
                    <span data-control-local="PreferenceNumber" data-storeprefid="<asp:Literal runat='server' ID='KX_PCPRFMGRRESULT_PNPreferenceId_XX'></asp:Literal>"><asp:TextBox ID="KX_PCPRFMGRRESULT_PNPreferenceNumber" CssClass="hide DATAPreferenceNumberHolder" runat="server" /></span>
                </div>
            </div>
        </asp:PlaceHolder>
    </div>
</asp:Content>
