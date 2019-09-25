<%@ Page Language="C#" MasterPageFile="~/Templates/PageTemplate.master" AutoEventWireup="true"
    CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <p class="LoadingText" align="center" valign="center">Please wait...</p>
    <div style="display: none">
        <asp:Button ID="KX_BC_RXS_RVCONTINUE" UseSubmitBehavior="true" runat="server" CssClass="continueButton" />
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.continueButton').click();
        });
    </script>
</asp:Content>

