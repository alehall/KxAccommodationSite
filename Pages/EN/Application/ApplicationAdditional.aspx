<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>

        <span data-control="DoYouSmokeQuestion">
            <asp:RadioButtonList id="KX_PCSAYAPPUDF_UD8_PNFieldValue_MO1_LXYesNoOptionsEN_PNDataValue_DTDoSPCyouSPCsmokeSPCquestion" RepeatDirection="Vertical" RepeatLayout="Flow" runat="server"></asp:RadioButtonList>
        </span>

        <span data-control="HobbiesAndInterestsQuestion">
            <asp:TextBox data-maxlength="255" CssClass="form-control" id="KX_PCSAYAPPUDF_UD10_PNFieldValue_MO1_ML255_DTHobbiesSPCandSPCinterestsSPCquestion" TextMode="Multiline" runat="server" />
            <span class="TextCount-Label"></span>
        </span>
        
        <span data-control="OtherLanguagesQuestion">
            <asp:TextBox data-maxlength="255" CssClass="form-control" id="KX_PCSAYAPPUDF_UD11_PNFieldValue_ML255_DTOtherSPClanguagesSPCquestion" TextMode="Multiline" runat="server" />
            <span class="TextCount-Label"></span>
        </span>

        <span data-control="BedtimeQuestion">
            <asp:RadioButtonList id="KX_PCSAYAPPUDF_UD7_PNFieldValue_MO1_LXYesNoOptionsEN_PNDataValue_DTBedSPCbeforeSPC11pmSPCquestion" RepeatDirection="Vertical" RepeatLayout="Flow" runat="server"></asp:RadioButtonList>
        </span>

        <asp:PlaceHolder ID="KX_PCSAYAPPUDF_UD40_VPFieldValue_CWYes_X" runat="server">
            <span data-control="FirstNameTextBox">
                <asp:TextBox ID="KX_PCSAYAPPUDF_UD41_PNFieldValue_MO1_DTFirstSPCname" placeholder="First name" runat="server"></asp:TextBox>
            </span>
        
            <span data-control="SurnameTextBox">
                <asp:TextBox ID="KX_PCSAYAPPUDF_UD42_PNFieldValue_MO1_DTSurname" placeholder="Surname" runat="server"></asp:TextBox>
            </span>
        
            <span data-control="DateOfBirthTextBox">
                <asp:TextBox ID="KX_PCSAYAPPUDF_UD43_PNFieldValue_MO1_DTDateSPCofSPCbirth" placeholder="Date of birth (dd/mm/yyyy)" runat="server"></asp:TextBox>
            </span>

            <span data-control="SpecialRequirementsQuestion">
                <asp:RadioButtonList id="KX_PCSAYAPPUDF_UD44_PNFieldValue_LXYesNoOptionsEN_PNDataValue_MO1_DTIsSPCthereSPCanySPCinformationSPCtoSPCprovideSPCquestion" RepeatDirection="Vertical" RepeatLayout="Flow" runat="server" AutoPostBack="True"></asp:RadioButtonList>
            </span>
        
            <span data-control="SpecialRequirementsTextBox">
                <asp:PlaceHolder ID="KX_PCSAYAPPUDF_UD44_VPFieldValue_CWYes" runat="server">
                    <asp:TextBox data-maxlength="255" CssClass="form-control" id="KX_PCSAYAPPUDF_UD45_ML255_PNFieldValue" TextMode="Multiline" runat="server" />
                    <span class="TextCount-Label"></span>
                </asp:PlaceHolder>
            </span>
        </asp:PlaceHolder>

        <span data-control="CoupleQuestionsSection">
            <asp:PlaceHolder ID="KX_PCSAYAPPUDF_UD40_VPFieldValue_CWYes" runat="server">
                <asp:Literal ID="KX_PCRESOURCE_RNCoupleQuestionsSectionEN_PNData" runat="server"></asp:Literal>
            </asp:PlaceHolder>
        </span>

        <span data-control="NavButtons">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
            <asp:Button ID="KX_BC_RXA_RVGo" runat="server" Text="Next" class="btn btn-primary pull-right" />
        </span>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVWelcome"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVPreferences"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVMedical"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>


        <span data-control="ErrorMsg"><div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div></span>
    </div>
    
    <div class="row headrow">
        <div class="col-sm-12 col-xs-3 logoutwrapper pull-right">
            <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
        </div>
        <div class="col-sm-12 col-xs-9 progresswrapper">
            <ol class="process reset-list clearfix">
                <li class="process-step" data-nav="hub">
                    <div><span class="tabNavItem__icon glyphicon glyphicon-home clickable"></span></div>
                    <div class="clickable">Accommodation Hub</div>
                </li>
                <li class="process-step" data-nav="true">
                    <div class="process-step__icon clickable">1</div>
                    <div class="clickable">Welcome</div>
                </li>
                <li class="process-step" data-nav="true">
                    <div class="process-step__icon clickable">2</div>
                    <div class="clickable">Preference<br/>selection</div>
                </li>
                <li class="process-step" data-nav="true">
                    <div class="process-step__icon clickable">3</div>
                    <div class="clickable">Medical<br />
                        information</div>
                </li>
                <li class="process-step process-step--active">
                    <div class="process-step__icon">4</div>
                    <div>Additional<br />
                        information</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">5</div>
                    <div>Application<br />
                        review</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">6</div>
                    <div>Finish</div>
                </li>
            </ol>
        </div>
    </div>
    
    <!-- Resource -->
    <asp:Literal ID="KX_PCRESOURCE_RNApplicationAdditionalInfoEN_PNData" runat="server"></asp:Literal>
    
    <script type="text/javascript">
        var showSpecialRequirement = '<asp:literal runat="server" ID="KX_PCSAYAPPUDF_UD44_PNFieldValue" />' === 'Yes';

        if (showSpecialRequirement)
            $('#ShowHideSpecialRequirements').show();

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
                $('#<%=KX_BC_RXS_RVWelcome.ClientID%>').click();
                break;
            case "2":
                $('#<%=KX_BC_RXS_RVPreferences.ClientID%>').click();
                break;
            case "3":
                $('#<%=KX_BC_RXS_RVMedical.ClientID%>').click();
                break;
            default:
                console.error("Navigation step not recognised!");
                break;
            }
        }
    </script>
</asp:Content>
