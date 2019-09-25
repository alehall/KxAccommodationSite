<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <span style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
    
        <span data-control="MedicalDocumentUploaders">
            <div class="row">
                <ol class="list-horizontal">
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument_CWYes" runat="server">
                        <li><p><b>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument" />)</b></p></li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument2_CWYes" runat="server">
                        <li><p><b>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument2" />)</b></p></li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument3_CWYes" runat="server">
                        <li><p><b>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument3" />)</b></p></li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument4_CWYes" runat="server">
                        <li><p><b>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument4" />)</b></p></li>
                    </asp:PlaceHolder>
                    <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNMedicalDocument5_CWYes" runat="server">
                        <li><p><b>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNMedicalDocument5" />)</b></p></li>
                    </asp:PlaceHolder>
                </ol>
            </div>
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
                <div>&nbsp;</div>
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
                    <div>&nbsp;</div>
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
                    <div>&nbsp;</div>
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
                    <div>&nbsp;</div>
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
                    <div>&nbsp;</div>
                </asp:PlaceHolder>
            </div>
            <!-- Medical File 5 -->
        </span>
        
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
    </span>
    
    <!-- Resource -->
    <div class="row">
        <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">
            Logout
            <span class="glyphicon glyphicon-log-out"></span>
        </button>
    </div>

    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNMedicalEvidenceUploadAfterApplyingEN_PNData"/>

    <div class="row">
        <div class="col-xs-12">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
            <asp:Button ID="KX_BC_RXA_RVCommitToApplicationAndKX" runat="server" Text="Commit and return to Hub" class="btn btn-primary pull-right" />
        </div>
    </div>
    <div class="row">&nbsp;</div>

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

        $(document).ready(function () {
            uploadCheck();
        });
    </script>
</asp:Content>
