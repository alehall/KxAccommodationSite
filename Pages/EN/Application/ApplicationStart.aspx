<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" ValidateRequest="false" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Imperial College Accommodation Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>

        <span data-control="ConfirmReadDocuments">
            <asp:CheckBox runat="server" ID="KX_PCSAYAPPUDF_UD14_PNFieldValue_PCSAYCR1_CVYes_MO1_DTISPChaveSPCreadSPCandSPCunderstoodSPCtheSPCinformationSPCabove" />
        </span>
        
        <span data-control="IntroductionInfo">
            <asp:PlaceHolder ID="KX_PCCOURSE_VPCourseType_CWUndergraduate" runat="server">
                <asp:Literal ID="KX_PCRESOURCE_RNUndergraduateIntroEN_PNData" runat="server"></asp:Literal>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="KX_PCCOURSE_VPCourseType_CWPostgraduate" runat="server">
                <asp:Literal ID="KX_PCRESOURCE_RNPostgraduateIntroEN_PNData" runat="server"></asp:Literal>
            </asp:PlaceHolder>
        </span>
        
        <span data-control="Under18DocumentUploader">
            <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNUnder18Form_CWYes_CTNE" runat="server">
                <ol class="list-horizontal">
                    <li class="col-xs-12 col-md-4">
                        <asp:Label AssociatedControlID="KX_DNUnder18Form" runat="server">Select the document</asp:Label>
                        <input id="KX_DNUnder18Form" type="file" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="KX_DNUnder18Form" ValidationExpression="(?i:^[0-9]\s(pdf|doc|docx|jpeg|jpg|png|bmp)$)" ErrorMessage="File type invalid"></asp:RegularExpressionValidator>
                    </li>
                    <li class="col-xs-12 col-md-4">
                        <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNUnder18Form" runat="server">Upload the document</asp:Label>
                        <div>
                            <asp:button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNUnder18Form" UseSubmitBehavior="True" runat="server" Text="Upload File" />
                        </div>
                    </li>
                </ol>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNUnder18Form_CWYes" runat="server">
                <ol class="list-horizontal">
                    <li class="col-xs-12 col-md-4"><p>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNUnder18Form" />)</p>
                        <asp:Button ID="KX_BC_RXA_RVDELDOCUMENT_DNUnder18Form" runat="server" Text="Remove the document" CssClass="btn btn-primary" />
                    </li>
                </ol>
            </asp:PlaceHolder>
        </span>
        
        <span data-control="Under18Info">
            <asp:PlaceHolder ID="KX_PCSAYAPPUDF_VPFieldValue_UD13_CWYes" runat="server">
                <asp:Literal ID="KX_PCRESOURCE_RNUnder18TextEN_PNData" runat="server"></asp:Literal>
            </asp:PlaceHolder>
        </span>
        
        <span data-control="NavButtons">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
            <asp:Button ID="KX_BC_RXA_RVGo" runat="server" Text="Next" class="btn btn-primary pull-right" />
        </span>
        
        <span data-control="ErrorMsg">
            <div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div>
        </span>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVBack_X"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
    </div>
    
    <div class="row">
        <div class="col-sm-12 col-xs-3 logoutwrapper pull-right">
            <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
        </div>
        <div class="col-sm-12 col-xs-9 progresswrapper">
            <ol class="process reset-list clearfix">
                <li class="process-step" data-nav="hub">
                    <div><span class="tabNavItem__icon glyphicon glyphicon-home clickable"></span></div>
                    <div class="clickable">Accommodation Hub</div>
                </li>
                <li class="process-step process-step--active">
                    <div class="process-step__icon">1</div>
                    <div>Welcome</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">2</div>
                    <div>Preference<br/>selection</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">3</div>
                    <div>Medical<br />information</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">4</div>
                    <div>Additional<br />information</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">5</div>
                    <div>Application<br />review</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">6</div>
                    <div>Finish</div>
                </li>
            </ol>
        </div>
    </div>

    <!-- Resource -->
    <asp:Literal ID="KX_PCRESOURCE_RNApplicationStartEN_PNData" runat="server"></asp:Literal>

    <script type="text/javascript">
        var hubLink = $("li[data-nav='hub'");

        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVBack.ClientID%>').click();
        });
    </script>
</asp:Content>