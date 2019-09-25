<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">

    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/LoginAndHome.jpg")%>' alt="Hub Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
		
		<asp:DropDownList runat="server" ID="KX_LUSSAcademicYearsDESC_NO1" CssClass="DATAAcademicYearID hub-year__years" />
		
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <h1>Welcome to your Accommodation Hub!</h1>
        </div>
		<div class="col-xs-12 col-lg-3">
            <div class="panel">
                <div class="panel-body">
                    <div class="studentBadge col-md-10" >
                        <ul class="studentBadge__info reset-list">
                            <li>
                                <div class="studentBadge__title">COLLEGE ID</div>
                                <div class="studentBadge__detail">
                                    <asp:Literal ID="KX_PCSTUDENT_PNStudentId" runat="server" />
                                </div>
                            </li>
                            <li>
                                <div class="studentBadge__title">NAME</div>
                                <div class="studentBadge__detail">
                                    <asp:Literal ID="KX_PCUSER_PNForeName" runat="server" />&nbsp;<asp:Literal ID="KX_PCUSER_PNSurName" runat="server" />
                                </div>
                            </li>
                            <li>
                                <div class="studentBadge__title">EMAIL ADDRESS</div>
                                <div class="studentBadge__detail">
                                    <asp:Literal ID="KX_PCUSER_PNEmailAddress" runat="server"></asp:Literal>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
                </div>
            </div>
        </div>
		<div class="col-xs-12 col-lg-9" runat="server">
            <div class="panel" runat="server">
                <div class="panel-body p-v-0" runat="server">
                    <asp:PlaceHolder ID="KX_PCAPPMGR_PNYearsArrayDesc_PACLONE_TSAcademicYearTemplate_TXAY" runat="server" />
                    <%--Academic Year Repeater--%>
                    <asp:PlaceHolder runat="server" ID="AcademicYearTemplate">
                        <div runat="server">
                            <div class="hub row"
                                data-academicyearid="<asp:Literal runat='server' id='KX_PCAY_PNAcademicYearId' />"
                                data-has-no-allocation="<asp:Literal runat='server' id='KX_PCUSER_PNHasNoAllocation_XXX' />"
                                data-offer-accepted="<asp:Literal runat='server' id='KX_PCUSER_PNHasAcceptedAllocation_X' />"
                                data-is-in-house="<asp:Literal runat='server' id='KX_PCUSER_PNIsInHouse_X' />">
                                <div class="js-tabs">
                                    <ul class="tab-navigation reset-list col-md-4 ">
                                        <li class="tab-navigation__item selectAcademicYearHolder" runat="server"></li>
                                        <li class="tab-navigation__item" runat="server">
                                            <a href="#apply">
                                                <asp:Literal ID="Literal6" runat="server">Your Application<span class="tabNavItem__icon glyphicon glyphicon-pencil"></span></asp:Literal>
                                            </a>
                                        </li>
                                        <li class="tab-navigation__item" runat="server">
                                            <a class="offerAnchor" href="#offer">
                                                <asp:Literal ID="Literal8" runat="server">Your Offer<span class="tabNavItem__icon glyphicon glyphicon-file"></span></asp:Literal>
                                            </a>
                                        </li>
                                        <li class="tab-navigation__item" runat="server">
                                            <a class="inductionAnchor" href="#induction">
                                                <asp:Literal ID="Literal9" runat="server">Your Halls<span class="tabNavItem__icon glyphicon glyphicon-briefcase"></span></asp:Literal>
                                            </a>
                                        </li>
                                        <li class="tab-navigation__item" runat="server">
                                            <a class="roomAnchor" href="#room">
                                                <asp:Literal ID="Literal10" runat="server">Your Room (coming soon)<span class="tabNavItem__icon glyphicon glyphicon-home"></span></asp:Literal>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="col-xs-12 col-md-8" runat="server">
                                        <div id="apply">
                                            <%--APPLICATIONS--%>
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPHasNoAllocation">
                                                <%--Start Application--%>
                                                <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsConfirmed_CWFalse">
                                                    <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsNew">
                                                        <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusStartApplication" />
                                                    </asp:Panel>
                                                    <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsEditable">
                                                        <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusContinueApplication" />
                                                    </asp:Panel>
                                                    <div class="col-sm-12 text-right">
                                                        <asp:Button runat="server" ID="KX_BCSAYAPP_VPIsNew_RXA_RVMakeApp" Text="Create application" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive" />
                                                        <asp:Button runat="server" ID="KX_BCSAYAPP_VPIsEditable_RXA_RVMakeApp" Text="Continue application" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive" />
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>
                                            <%--Submitted Application--%>
                                            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInactive_CWFalse_X">
                                                <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsConfirmed">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusSubmittedApplication" />
                                                    <div class="col-sm-12 text-right">
                                                        <br/>
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVReviewApplication" Text="Review Application" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive" />
                                                        <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD13_VPFieldValue_CWYes" >
                                                            <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD121_VPFieldValue_CWYes_CTNE">
                                                                <br />
                                                                <asp:Button runat="server" ID="KX_BC_RXA_RVUnder18Upload" Text="Upload Under 18 Parents/Guardians Form" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive" />
                                                            </asp:Panel>
                                                        </asp:Panel>
                                                        <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD38_VPFieldValue_CWYes"> <!-- Medical question --> 
                                                            <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD125_VPFieldValue_CWYes_CTNE">
                                                                <br title=""/>
                                                                <asp:Button runat="server" ID="KX_BC_RXA_RVMedicalUpload" Text="Submit Medical Evidence" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive" />
                                                            </asp:Panel>
                                                        </asp:Panel>
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>
                                            <%--Withdrawn Application--%>
                                            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInactive">
                                                <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusWithdrawnApplication" />
                                                <div class="col-sm-12 text-center">
                                                    <asp:Button runat="server" ID="Button1" Text="Application Withdrawn" UseSubmitBehavior="false" CssClass="btn-danger btn btnActive disabled" />
                                                </div>
                                            </asp:Panel>
                                        </div>
                                        <div id="offer">
                                            <%--CONTRACTS--%>
                                            <%--No Offer--%>
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPHasNoAllocation_XXX">
                                                <div class="hub__status hub__status--incomplete">Incomplete</div>
                                                <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusNoOffer" />
                                            </asp:Panel>
                                            <%--Pending Offer--%>
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPHasNoAllocation_CWFalse">
                                                <asp:Panel runat="server" ID="KX_PCUSER_VPHasPendingAllocation">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusPendingOffer" />
                                                    <div class="col-sm-12 text-center">
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVViewOffer" Text="View Offer" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive pull-right" />
                                                    </div>
                                                </asp:Panel>
                                                <%--Accepted Offer--%>
                                                <asp:Panel runat="server" ID="KX_PCUSER_VPHasAcceptedAllocation">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusAcceptedOffer" />
                                                    <div class="col-sm-12 text-center"><br />
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVReviewOffer" Text="Review Offer" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive pull-right" />
                                                    </div>
                                                </asp:Panel>
                                                <%--Expired Offer--%>
                                                <asp:Panel runat="server" ID="KX_PCUSER_VPHasWithdrawnOrExpiredAllocation">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusExpiredOffer" />
                                                </asp:Panel>
                                                <%--Rejected Offer--%>
                                                <asp:Panel runat="server" ID="KX_PCUSER_VPHasRejectedAllocation">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusRejectedOffer" />
                                                    <div class="hub__status hub__status--incomplete"></div>
                                                </asp:Panel>
                                            </asp:Panel>
                                        </div>
                                        <div id="induction">
                                            <%--INDUCTIONS--%>
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPHasAcceptedAllocation_X">
                                                <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWFalse">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusStartInduction" />
                                                    <div class="col-sm-12 text-center">
                                                        <br/>
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVInduction" Text="Begin Induction" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive pull-right" />
                                                    </div>
                                                </asp:Panel>
                                                <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWTrue">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusReviewInduction" />
                                                    <div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
                                                        <br />
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVInduction_X" Text="Review Induction" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive pull-left hubButtons" />
                                                        <asp:Button runat="server" ID="KX_BC_RXA_RVArrivalPass" Text="Key Collection Pass"  UseSubmitBehavior="false" CssClass="btn btn-primary btnActive pull-right hubButtons" />
                                                    </div>
                                                    <div runat="server" class="col-sm-12 text-center"><br />
                                                        <asp:Literal runat="server" ID="KX_PCRESOURCE_RNHubInductionLinks_PNData" />
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>
                                        </div>
                                        <div id="room">
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPIsInHouse_CWFalse">
                                                <asp:Panel runat="server" ID="KX_PCUSER_VPHasAllocation_XXXXXX">
                                                    <asp:Literal runat="server" ID="KX_PCCONTROLSTUDENT_PNControlValue_CXHubStatusNotInHouse" />
                                                    <div class="col-sm-12 text-center">
                                                        <asp:Button runat="server" ID="Button4" Text="Review Induction" UseSubmitBehavior="false" CssClass="btn-primary btn btnActive disabled" />
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="KX_PCUSER_VPIsInHouse">
                                                <div class="col-sm-12 text-center">
                                                    <asp:Button CssClass="btn btn-primary" Text="Visitor Request (coming soon)" runat="server" />
                                                </div>
                                                <div class="col-sm-12 text-center">
                                                    <asp:Button CssClass="btn btn-primary" Text="Room Inventory (coming soon)" runat="server" />
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPHasActiveStudentRequests">
                                                <div class="col-md-12 m-t-1 text-right">
                                                    <asp:Button CssClass="btn btn-default" Text="View Submitted Requests (coming soon)" runat="server" />
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:PlaceHolder>
                </div>
            </div>
        </div>
    </div>

    <%--Script to populate dropdown list --%>
    <script type="text/javascript">
        var academicYearDropdown = $('.DATAAcademicYearID');

        if (typeof (sessionStorage.getItem('hub.academic.yearid')) !== "undefined" && sessionStorage.getItem('hub.academic.yearid') !== null && sessionStorage.getItem('hub.academic.yearid') !== 'null' && sessionStorage.getItem('hub.academic.yearid') !== '') {
            academicYearDropdown.val(sessionStorage.getItem('hub.academic.yearid'));
        } else {
            academicYearDropdown.val($($('option[value=<asp:literal runat="server" ID="KX_PCCFG_PNDefaultAcademicYear"></asp:literal>]', academicYearDropdown)[0]).attr('value'));
        }

        function selectYear() {
            var yearid = academicYearDropdown.val();

            $('div[data-academicyearid]').hide();
            var selectHolder = $('li.selectAcademicYearHolder', $('div[data-academicyearid=' + yearid + ']'));
            academicYearDropdown.detach();
            selectHolder.append(academicYearDropdown);
            $('div[data-academicyearid=' + yearid + ']').toggle(true);
            sessionStorage.setItem('hub.academic.yearid', yearid);
            academicYearDropdown.blur();
        }
        var TAB_APPLICATION = 0,
            TAB_OFFER = 1,
            TAB_INDUCTION = 2,
            TAB_ROOM = 3;

        var tabArray = [TAB_APPLICATION, TAB_OFFER, TAB_INDUCTION, TAB_ROOM];

        var setActiveTab = function (disabledTabs, tabGroup) {
            var enabledTabs = $.grep(tabArray, function (value) {
                return $.inArray(value, disabledTabs) === -1;
            });

            if (enabledTabs.length > 0) {
                tabGroup.tabs('option', 'active', enabledTabs[enabledTabs.length - 1]);
            };
        };

        $(document).ready(function () {
            academicYearDropdown.on('change', selectYear);
            selectYear();

            var academicYears = $('div[data-academicyearid]');

            var tabListToDisable = new Array();

            academicYears.each(function (index, academicYear) {
                var currentYear = $(academicYear);
                var data = currentYear.data();

                var anchor;

                if (data.hasNoAllocation === 'True') {
                    // Offer panel
                    anchor = $('a.offerAnchor', currentYear);
                    anchor.parent().addClass('tab-navigation__item--disabled');
                    tabListToDisable.push(1);
                }

                if (data.offerAccepted === 'False') {
                    // Induction panel
                    anchor = $('a.inductionAnchor', currentYear);
                    anchor.parent().addClass('tab-navigation__item--disabled');
                    tabListToDisable.push(2);
                }

                if (data.isInHouse === 'False') {
                    // Room panel
                    anchor = $('a.roomAnchor', currentYear);
                    anchor.parent().addClass('tab-navigation__item--disabled');
                    tabListToDisable.push(3);
                }

                // Stop disabled tabs from being clicked
                var tabGroup = $('.js-tabs', currentYear);

                tabGroup.tabs('option', 'disabled', tabListToDisable);
 
                setActiveTab(tabListToDisable, tabGroup);

                tabListToDisable = new Array();
            });
        });

    </script>
</asp:Content>
