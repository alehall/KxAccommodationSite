<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <span style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
    
        <span data-control="Under18DocumentUploader">
            <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNUnder18Form_CWYes_CTNE" runat="server">
                <ol class="list-horizontal">
                    <li class="col-xs-12 col-md-4">
                        <asp:Label AssociatedControlID="KX_DNUnder18Form" runat="server">Select the document</asp:Label>
                        <input id="KX_DNUnder18Form" type="file" runat="server" />
                    </li>
                    <li class="col-xs-12 col-md-4">
                        <asp:Label AssociatedControlID="KX_BC_RXS_RVADDDOCUMENT_DNUnder18Form" runat="server">Upload the document</asp:Label>
                        <div>
                            <asp:button CssClass="btn btn-primary" ID="KX_BC_RXS_RVADDDOCUMENT_DNUnder18Form" runat="server" Text="Upload File" />
                        </div>
                    </li>
                </ol>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="KX_PCSAYAPP_VPDocumentExists_DNUnder18Form_CWYes" runat="server">
                <ol class="list-horizontal">
                    <li class="col-xs-12 col-md-4"><p>Documentation Uploaded (<asp:Literal runat="server" ID="KX_PCSAYAPP_PNDocumentFileName_DNUnder18Form" />)</p>
                        <asp:Button ID="KX_BC_RXS_RVDELDOCUMENT_DNUnder18Form" runat="server" Text="Remove the document" CssClass="btn btn-primary" />
                    </li>
                </ol>
            </asp:PlaceHolder>
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
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNUnder18SubmittedAfterApplyingEN_PNData"/>
    
    <div class="row">
        <div class="col-xs-12">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" class="btn btn-default" />
            <asp:Button ID="KX_BC_RXA_RVCommitToApplicationAndKX" runat="server" Text="Commit and return to Hub" class="btn btn-primary pull-right" />
        </div>
    </div>
    <div class="row">&nbsp;</div>
</asp:Content>
