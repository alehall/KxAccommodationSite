<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    
    
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="ErrorMsg"><div class="alert alert-danger"><asp:Literal runat="server" ID="KxError" /></div></span>
        <span data-control="ConfirmReadInformation">
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPIsConfirmed_CWFalse_XX">
                <asp:CheckBox runat="server" Text="I have read and understood the information above" ID="KX_PCSAYAPPUDF_UD124_PNFieldValue_CR1_CVYes_UVNo_DTISPChaveSPCreadSPCandSPCunderstoodSPCtheSPCinformationSPCabove" />
            </asp:PlaceHolder>
        </span>
        <span data-control="NavButtons">
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPIsConfirmed_CWFalse_XXX">
                <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
                <asp:Button ID="KX_BC_RXA_RVCompleteApplication" runat="server" Text="Complete Application" class="btn btn-primary pull-right" />
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPIsConfirmed_XX">
                <asp:Button ID="KX_BC_RXA_RVBacktohub" runat="server" Text="Return to Hub Page" class="btn btn-primary pull-right" />
            </asp:PlaceHolder>
        </span>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVWelcome" />
        <asp:Button runat="server" ID="KX_BC_RXS_RVPreferences" />
        <asp:Button runat="server" ID="KX_BC_RXS_RVMedical"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVAdditional"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <div class="row">
        <div class="col-sm-12 col-xs-3 pull-right">
            <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
        </div>
        <div class="col-sm-12 col-xs-9">
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
                <li class="process-step" data-nav="true">
                    <div class="process-step__icon clickable">4</div>
                    <div class="clickable">Additional<br />
                        information</div>
                </li>

                <li class="process-step process-step--active">
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

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationReviewEN_PNData" />    
    
    <asp:PlaceHolder runat="server" ID="KX_PCSAYAPP_VPIsConfirmed_CWFalse_X">
        <script type="text/javascript">
            var hubLink = $("li[data-nav='hub']"),
                currentNav = $("li[data-nav='true']");

            hubLink.on("click",
                function() {
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
                case "4":
                    $('#<%=KX_BC_RXS_RVAdditional.ClientID%>').click();
                    break;
                default:
                    console.error("Navigation step not recognised!");
                    break;
                }
            }

            var showMedicaDetails = '<asp:literal runat="server" ID="KX_PCSAYAPPUDF_PNFieldValue_UD38" />' === 'No';

            if (showMedicaDetails) {
                $('.showHideMedicalDetails').hide();
            }
        </script>
 

    </asp:PlaceHolder>
    

    <div style="display: none;">

        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPAddress_CWXNB">
            <script type="text/javascript">
                $('.showAddress').show();
            </script>
        </asp:PlaceHolder>        
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPTown_CWXNB">
            <script type="text/javascript">
                $('.showTown').show();
            </script>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPCounty_CWXNB">
            <script type="text/javascript">
                $('.showCounty').show();
            </script>
        </asp:PlaceHolder>
                <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPCountry_CWXNB">
            <script type="text/javascript">
                $('.showCountry').show();
            </script>
        </asp:PlaceHolder>
                <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPPostcode_CWXNB">
            <script type="text/javascript">
                $('.showPostCode').show();
            </script>
        </asp:PlaceHolder>
    </div>
</asp:Content>