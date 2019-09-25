<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>
<%@ Register src="~/UserControls/Questions/Induction.ascx" tagname="Induction" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
<style  type="text/css">
    input[type=radio] {
        float: left;
    }

    label {
        margin-left: 15px;
        display: block;

    }
    #Kx label {
     display:flex !important;
    }

</style>

    <%--START DATA CONTROLS--%>
    <div style="display: none;">


        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep1"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep2"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep3"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep4"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep5"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <span data-control="logout1"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>

		<span data-control="Question1"><uc1:Induction runat="server" QuestionId="63" ID="KX_ucInductionQuestion63" /></span>
        <span data-control="Question2"><uc1:Induction runat="server" QuestionId="64" ID="KX_ucInductionQuestion64" /></span>
        <span data-control="Question3"><uc1:Induction runat="server" QuestionId="65" ID="KX_ucInductionQuestion65" /></span>
        <span data-control="Question4"><uc1:Induction runat="server" QuestionId="66" ID="KX_ucInductionQuestion66" /></span>
        <span data-control="Question5"><uc1:Induction runat="server" QuestionId="67" ID="KX_ucInductionQuestion67" /></span>
        <span data-control="Question6"><uc1:Induction runat="server" QuestionId="68" ID="KX_ucInductionQuestion68" /></span>
		<span data-control="Question7"><uc1:Induction runat="server" QuestionId="69" ID="KX_ucInductionQuestion69" /></span>
		<span data-control="Question8"><uc1:Induction runat="server" QuestionId="70" ID="KX_ucInductionQuestion70" /></span>
		<span data-control="Question9"><uc1:Induction runat="server" QuestionId="71" ID="KX_ucInductionQuestion71" /></span>
		<span data-control="Question10"><uc1:Induction runat="server" QuestionId="72" ID="KX_ucInductionQuestion72" /></span>
        <span data-control="Nav">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" CssClass="btn btn-default"  />
            <asp:Button ID="KX_BC_RXA_RVNext" runat="server" Text="Next" CssClass="btn btn-primary pull-right"  />
        </span>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNInductionFireQuiz_PNData" />

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
            case "2":
                $('#<%=KX_BC_RXS_RVStep2.ClientID%>').click();
                break;
            case "3":
                $('#<%=KX_BC_RXS_RVStep3.ClientID%>').click();
                break;
            case "4":
                $('#<%=KX_BC_RXS_RVStep4.ClientID%>').click();
                break;
            case "5":
                $('#<%=KX_BC_RXS_RVStep5.ClientID%>').click();
                break;
            default:
                console.error("Navigation step not recognised!");
                break;
            }
        }
    </script>
</asp:Content>