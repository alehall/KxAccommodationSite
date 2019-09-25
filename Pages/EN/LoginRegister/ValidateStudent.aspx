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
    <h1>Accommodation Applicaton</h1>
    <fieldset>
        <legend class="Accessible"><span>Enter validation details</span></legend>
        <p>Please enter your date of birth and your CID or UCAS number to proceed with your application.</p>
        <p>If you have previously confirmed your email and created an account then <asp:LinkButton ID="KX_BC_RXA_RVGOLOGIN" runat="server" Text="Login" /></p>
        <ol>
            <li>
                <asp:Label runat="server" AssociatedControlID="KX_PCREGMGR_PNDob_FSd_MO1" ID="lbl1" Text="Date of Birth [dd/mm/yyyy]" />
                <asp:TextBox CssClass="Date datepicker" ID="KX_PCREGMGR_PNDob_FSd_MO1" runat="server" />
            </li>
            <li>
                <asp:Label runat="server" AssociatedControlID="KX_PCREGMGR_PNGenericId_MO1_DTUcasOrCid" ID="lbl2" Text="UCAS or Imperial College London Id (CID)" />
                <asp:TextBox ID="KX_PCREGMGR_PNGenericId_MO1_DTUcasOrCid" runat="server" />
            </li>
        </ol>
    </fieldset>
    <div id="Nav" class="Clearfix CTA">
        <asp:Button ID="KX_BC_RXA_RVDOREGISTER" runat="server" Text="Next" CssClass="CallToAction" />
    </div>
</asp:Content>