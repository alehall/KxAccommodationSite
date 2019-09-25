<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 600px; height: 189px">
        <tr>
            <td><br /></td>
        </tr>
        <tr><td style="height: 91px">Thank you. Your e-mail address has been confirmed and you can now log in to continue your application.</td>
        </tr>
        <tr>
            <td><p class="KxError"><asp:Literal runat="server" ID="KXError" /></p></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center"><asp:HyperLink ID="KX_PCCFG_PNWorkflowHomePageUrl" runat="server" NavigateUrl="">Continue</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>