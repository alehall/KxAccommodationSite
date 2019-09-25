<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 559px; height: 189px">
        <tr>
            <td colspan="4"><br /></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 48px"><asp:Label runat="server" AssociatedControlID="KX_PCREGMGR_PNUserConfirmationCode" Text="To verify your email address, please enter your six digit confirmation code in the text box (if it has not been entered already) and click the Confirm button"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 91px"><asp:TextBox ID="KX_PCREGMGR_PNUserConfirmationCode" Width="546px" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" align="center"><asp:Button runat="server" ID="KX_BC_RXA_RVCONFIRMME" Text="Confirm" />&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center"><p class="KxError"><asp:Literal runat="server" ID="KXError" /></p></td>
        </tr>
    </table>
</asp:Content>