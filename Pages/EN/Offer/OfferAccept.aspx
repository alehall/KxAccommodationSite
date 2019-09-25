<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">   
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="TermsCheckbox1"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD126_PNFieldValue_CVYes_CR1_DTTermsCheckbox1"/></span>
        <span data-control="TermsCheckbox2"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD127_PNFieldValue_CVYes_CR1_DTTermsCheckbox2"/></span>
        <span data-control="TermsCheckbox3"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD128_PNFieldValue_CVYes_CR1_DTTermsCheckbox3"/></span>
        <span data-control="TermsCheckbox4"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD129_PNFieldValue_CVYes_CR1_DTTermsCheckbox4"/></span>
        <span data-control="TermsCheckbox5"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD130_PNFieldValue_CVYes_CR1_DTTermsCheckbox5"/></span>
        <span data-control="TermsCheckbox6"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD131_PNFieldValue_CVYes_CR1_DTTermsCheckbox6"/></span>
        <span data-control="TermsCheckbox7"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD132_PNFieldValue_CVYes_CR1_DTTermsCheckbox7"/></span>
        <span data-control="TermsCheckbox8"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD133_PNFieldValue_CVYes_CR1_DTTermsCheckbox8"/></span>
        <span data-control="TermsCheckbox9"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD134_PNFieldValue_CVYes_CR1_DTTermsCheckbox9"/></span>
        <span data-control="TermsCheckbox10"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD135_PNFieldValue_CVYes_CR1_DTTermsCheckbox10"/></span>
        <span data-control="TermsCheckbox11"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD136_PNFieldValue_CVYes_CR1_DTTermsCheckbox11"/></span>
	<span data-control="TermsCheckbox12"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD137_PNFieldValue_CVYes_CR1_DTTermsCheckbox12"/></span>
	<span data-control="TermsCheckbox13"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD138_PNFieldValue_CVYes_CR1_DTTermsCheckbox13"/></span>
	<span data-control="TermsCheckbox14"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD140_PNFieldValue_CVYes_CR1_DTTermsCheckbox14"/></span>
	<span data-control="TermsCheckbox15"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD141_PNFieldValue_CVYes_CR1_DTTermsCheckbox15"/></span>
	<%--<asp:Panel runat="server" ID="KX_PCUSERMIXSITE_VPSiteId_CW4">--%>
        <%--<asp:Panel runat="server" ID="KX_PCCOURSECOURSETYPE_VPDescription_CWPG">--%>
               <%--<span data-control="TermsCheckbox15"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD141_PNFieldValue_CVYes_CR1_DTTermsCheckbox15"/></span>--%>
            </asp:Panel>
        </asp:Panel>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <%--<span data-control="TermsCheckbox15"><asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD141_PNFieldValue_CVYes_CR1_DTTermsCheckbox15"/></span>--%>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub" UseSubmitBehavior="False" />
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep1" UseSubmitBehavior="False" />
        <span data-control="UsernameInput"><asp:TextBox ID="KX_PCCONTRACTMGR_PNUserName" MaxLength="255" runat="server" CssClass="form-control DATAAccept" placeholder="Username"  /></span>
        <span data-control="PasswordInput"><asp:TextBox ID="KX_PCCONTRACTMGR_PNPassword" MaxLength="255" runat="server" TextMode="Password" CssClass="form-control DATAAccept" placeholder="Password" /></span>
        <span data-control="NextButton"><asp:Button runat="server" ID="KX_BC_RXA_RVACCEPT" Text="I Accept the Contract" CssClass="btn-primary btn pull-right DATAAcceptButton" UseSubmitBehavior="True"  style="background-color:#379f9f" /></span>
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVBACK" Text="Back" runat="server" CssClass="btn-primary btn pull-left" style="background-color:#379f9f" UseSubmitBehavior="False" /><br/></span>
        <span data-control="DeclineButton"><asp:Button ID="KX_BC_RXS_RVDECLINE" Text="Reject Offer" CssClass="btn btn-secondary btn-danger pull-right pull-bottom" style="margin-top:95px;" runat="server" /></span>
        <span data-control="ErrorMsg"><div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div></span>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNOfferAcceptEN_PNData" />

        <script type="text/javascript">
        $(document).ready(function () {
            $('.DATAAccept').keydown(function (event) {
                if (event.keyCode === 13) {
                    $('.DATAAcceptButton').click();
                    return false;
                }
            });
        });
    </script>
        <script type="text/javascript">
        var hubLink = $("li[data-nav='hub']"),
            currentNav = $("li[data-nav='true']");
        
        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVHub.ClientID%>').click();
        });

        currentNav.on("click", function () {
            var scope = this;
            var step = $('div.process-step__icon', scope).text();
            clickNav(step);
        });

        function clickNav(newStep) {
            switch (newStep) {
            case "1":
                $('#<%=KX_BC_RXS_RVStep1.ClientID%>').click();
                break;
            default:
                console.error("Navigation step not recognised!");
                break;
            }
        }
    </script>
</asp:Content> 