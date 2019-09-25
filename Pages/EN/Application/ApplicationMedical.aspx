<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>

        <span data-control="MedicalConditionYesNo">
            <asp:RadioButtonList ID="KX_PCSAYAPPUDF_UD38_PNFieldValue_LXYesNoOptionsEN_PNDataValue_MO1_DTMedicalSPCquestion" RepeatDirection="Vertical" AutoPostBack="True" RepeatLayout="Flow" runat="server"></asp:RadioButtonList>
        </span>
        
        <span data-control="HasMedicalConditionYes">
            <asp:PlaceHolder ID="KX_PCSAYAPPUDF_UD38_VPFieldValue_CWYes" runat="server">
                <asp:Literal ID="KX_PCRESOURCE_RNMedicalDetailQuestionsEN_PNData" runat="server"></asp:Literal>
            </asp:PlaceHolder>
        </span>

        <asp:PlaceHolder ID="KX_PCSAYAPPUDF_UD38_VPFieldValue_CWYes_X" runat="server">
            <span data-control="MedicalDetailOptions">
                <div class="col-xs-12">
                    <asp:CheckBoxList ID="KX_PCSAYAPPUDF_UD82_PNFieldValue_LXMedicalDetailOptionsEN_MO1_DTMedicalCondition" RepeatDirection="Vertical" RepeatLayout="UnorderedList" runat="server" CssClass="medicalCheckbox"></asp:CheckBoxList>
                </div>
            </span>
            
            <span data-control="ProvideFurtherDetails">
                <asp:TextBox data-maxlength="255" CssClass="form-control" ID="KX_PCSAYAPPUDF_UD4_PNFieldValue_MO1_ML255_DTDisabilityDetails" TextMode="Multiline" runat="server" />
                <span class="TextCount-Label"></span>
            </span>

            <span data-control="MedicalDocumentUploaders">
                <!-- Medical File 1 -->
                <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument_CWYes_CTNE" runat="server">
                    <div class="row">
                        <ol class="list-horizontal">
                            <li class="col-xs-12 col-md-4">
                                <asp:Label AssociatedControlID="KX_DNMedicalDocument" runat="server">Select the document</asp:Label>
                                <input type="file" id="KX_DNMedicalDocument" runat="server" />
                            </li>
                            <li class="col-xs-12 col-md-4">
                                <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument" runat="server">Upload the document</asp:Label>
                                <div>
                                    <asp:Button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument" runat="server" Text="Upload File" />
                                </div>
                            </li>
                        </ol>
                    </div>
                </asp:PlaceHolder>
                <!-- Medical File 1 -->
                <!-- Medical File 2 -->
                <div id="Document2" style="display: none;">
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument2_CWYes_CTNE" runat="server">
                        <div class="row">
                            <ol class="list-horizontal">
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_DNMedicalDocument2" runat="server">Select the document</asp:Label>
                                    <input type="file" id="KX_DNMedicalDocument2" runat="server" />
                                </li>
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument2" runat="server">Upload the document</asp:Label>
                                    <div>
                                        <asp:Button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument2" runat="server" Text="Upload File" />
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </asp:PlaceHolder>
                </div>
                <!-- Medical File 2 -->
                <!-- Medical File 3 -->
                <div id="Document3" style="display: none;">
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument3_CWYes_CTNE" runat="server">
                        <div class="row">
                            <ol class="list-horizontal">
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_DNMedicalDocument3" runat="server">Select the document</asp:Label>
                                    <input type="file" id="KX_DNMedicalDocument3" runat="server" />
                                </li>
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument3" runat="server">Upload the document</asp:Label>
                                    <div>
                                        <asp:Button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument3" runat="server" Text="Upload File" />
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </asp:PlaceHolder>
                </div>
                <!-- Medical File 3 -->
                <!-- Medical File 4 -->
                <div id="Document4" style="display: none;">
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument4_CWYes_CTNE" runat="server">
                        <div class="row">
                            <ol class="list-horizontal">
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_DNMedicalDocument4" runat="server">Select the document</asp:Label>
                                    <input type="file" id="KX_DNMedicalDocument4" runat="server" />
                                </li>
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument4" runat="server">Upload the document</asp:Label>
                                    <div>
                                        <asp:Button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument4" runat="server" Text="Upload File" />
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </asp:PlaceHolder>
                </div>
                <!-- Medical File 4 -->
                <!-- Medical File 5 -->
                <div id="Document5" style="display: none;">
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument5_CWYes_CTNE" runat="server">
                        <div class="row">
                            <ol class="list-horizontal">
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_DNMedicalDocument5" runat="server">Select the document</asp:Label>
                                    <input type="file" id="KX_DNMedicalDocument5" runat="server" />
                                </li>
                                <li class="col-xs-12 col-md-4">
                                    <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument5" runat="server">Upload the document</asp:Label>
                                    <div>
                                        <asp:Button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNMedicalDocument5" runat="server" Text="Upload File" />
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </asp:PlaceHolder>
                </div>
                <!-- Medical File 5 -->
                <div class="row">
                    <ul class="list-horizontal">
                        <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument_CWYes" runat="server">
                            <li><p>Documentation Uploaded (<b><asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument" /></b>)</p></li>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument2_CWYes" runat="server">
                            <li><p>Documentation Uploaded (<b><asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument2" /></b>)</p></li>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument3_CWYes" runat="server">
                            <li><p>Documentation Uploaded (<b><asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument3" /></b>)</p></li>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument4_CWYes" runat="server">
                            <li><p>Documentation Uploaded (<b><asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument4" /></b>)</p></li>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument5_CWYes" runat="server">
                            <li><p>Documentation Uploaded (<b><asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument5" /></b>)</p></li>
                        </asp:PlaceHolder>
                    </ul>
                </div>
            </span>
        
            <span data-control="HaveYouInformedQuestion">
                <asp:CheckBoxList RepeatDirection="Vertical" RepeatLayout="Flow" ID="KX_PCSAYAPPUDF_UD83_PNFieldValue_LXHaveYouInformedOptionsEN_MO1_PNDataValue_DTHaveSPCyouSPCinformedSPCquestion" runat="server"></asp:CheckBoxList>
            </span>
        
            <span data-control="LocalAuthorityCareQuestion">
                <asp:RadioButtonList ID="KX_PCSAYAPPUDF_UD122_PNFieldValue_LXYesNoOptionsEN_PNDataValue_MO1_DTLocalSPCAuthoritySPCCareSPCquestion" RepeatDirection="Vertical" RepeatLayout="Flow" runat="server"></asp:RadioButtonList>
            </span>
        </asp:PlaceHolder>

        <span data-control="ErrorMsg">
            <div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div>
        </span>
        
        <span data-control="NavButtons">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
            <asp:Button ID="KX_BC_RXA_RVGo" runat="server" Text="Next" class="btn btn-primary pull-right" />
        </span>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVWelcome"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVPreferences"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
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
                <li class="process-step process-step--active">
                    <div class="process-step__icon">3</div>
                    <div>Medical<br />
                        information</div>
                </li>
                <li class="process-step">
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
    <asp:Literal ID="KX_PCRESOURCE_RNApplicationMedicalEN_PNData" runat="server"></asp:Literal>
    
    <script type="text/javascript">
        var doc1Uploaded = '<asp:literal runat="server" ID="KX_PCSAYAPP_PNDocumentExists_DNMedicalDocument" />' === 'Yes';
        var doc2Uploaded = '<asp:literal runat="server" ID="KX_PCSAYAPP_PNDocumentExists_DNMedicalDocument2" />' === 'Yes';
        var doc3Uploaded = '<asp:literal runat="server" ID="KX_PCSAYAPP_PNDocumentExists_DNMedicalDocument3" />' === 'Yes';
        var doc4Uploaded = '<asp:literal runat="server" ID="KX_PCSAYAPP_PNDocumentExists_DNMedicalDocument4" />' === 'Yes';
        var doc5Uploaded = '<asp:literal runat="server" ID="KX_PCSAYAPP_PNDocumentExists_DNMedicalDocument5" />' === 'Yes';

        function uploadCheck() {
            if (doc2Uploaded || (doc1Uploaded && (doc3Uploaded || doc4Uploaded || doc5Uploaded))) {
                $('#Document2').show();
            }
            if (doc3Uploaded || (doc1Uploaded && doc2Uploaded && (doc4Uploaded || doc5Uploaded))) {
                $('#Document3').show();
            }
            if (doc4Uploaded || (doc1Uploaded && doc2Uploaded && doc3Uploaded && doc5Uploaded) ) {
                $('#Document4').show();
            }
            if (doc5Uploaded) {
                $('#Document5').show();
            }
        }

        function makeUploaderVisible() {
            if (!doc2Uploaded) {
                $('#Document2').show();
            } else if (!doc3Uploaded) {
                $('#Document3').show();
            } else if (!doc4Uploaded) {
                $('#Document4').show();
            } else if (!doc5Uploaded) {
                $('#Document5').show();
            }
        }

        $('#addAnotherDocUploader').on("click", function() {
            makeUploaderVisible();
        });

        var disableAddUploader = 
            (!doc1Uploaded && !doc2Uploaded && !doc3Uploaded && !doc4Uploaded && !doc5Uploaded) || 
            (doc1Uploaded && doc2Uploaded && doc3Uploaded && doc4Uploaded && doc5Uploaded);

        if (disableAddUploader) {
            $('#addAnotherDocUploader').prop("disabled", true);
        }

        uploadCheck();

        var hubLink = $("li[data-nav='hub']")
            currentNav = $("li[data-nav='true']");

            hubLink.on("click", function () {
                 $('#<%=KX_BC_RXS_RVHub.ClientID%>').click();
            });

        currentNav.on("click", function() {
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
            default:
                console.error("Navigation step not recognised!");
                break;
            }
        }
    </script>
</asp:Content>
