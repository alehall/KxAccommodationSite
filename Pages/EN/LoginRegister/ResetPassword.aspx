<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.datepicker').datepicker
            ({
                dateFormat: "dd/mm/yy",
                gotoCurrent: true
            });
        });
    </script>
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Reset Password</h1>
    <fieldset>
        <legend class="Accessible"><span>Enter student details and new password</span></legend>
        <p>Please note your password should be at least six characters long and contain at least one number, one uppercase character and one non-alphanumeric character.</p>
        <p>If you already know these details please <asp:LinkButton ID="KX_BC_RXS_RVGOLOGIN" runat="server" Text="Login" />.</p>
        <ol>
            <li>
                <asp:Label runat="server" ID="lbl1" AssociatedControlID="KX_PCREGMGR_PNDob_FSG_MO1_OTDATETIME" Text="Date of Birth [dd/mm/yyyy]" />
                <asp:TextBox ID="KX_PCREGMGR_PNDob_FSG_MO1_OTDATETIME" runat="server" CssClass="Date datepicker" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl2" AssociatedControlID="KX_PCREGMGR_PNGenericId_MO1_DTUcasOrCid" Text="UCAS or Imperial College London Id (CID)" />
                <asp:TextBox ID="KX_PCREGMGR_PNGenericId_MO1_DTUcasOrCid" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl3" AssociatedControlID="KX_PCREGMGR_PNPassword_MO1" Text="New Password" />
                <asp:TextBox ID="KX_PCREGMGR_PNPassword_MO1" TextMode="password" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" ID="lbl4" AssociatedControlID="KX_PCREGMGR_PNConfirmPassword_MO1" Text="Confirm New Password" />
                <asp:TextBox ID="KX_PCREGMGR_PNConfirmPassword_MO1" TextMode="password" runat="server" />
            </li>
        </ol>
    </fieldset>
    <div id="Nav" class="Clearfix CTA">
        <asp:Button ID="KX_BC_RXA_RVRESETME" runat="server" Text="Reset" CssClass="CallToAction" />
    </div>
</asp:Content>