<%@ Page Language="C#" MasterPageFile="~/Templates/NewPageTemplate.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="KxError"><asp:Literal runat="server" ID="KXError" /></p>
    <h1>Student Details</h1>
    <ol class="Data Clearfix">
        <li><span>College Id (CID)</span><asp:Literal ID="KX_PCStudent_PNStudentId" runat="server" /></li>
        <li><span>Title</span><asp:Literal ID="KX_PCStudent_PNTitle" runat="server" /></li>
        <li><span>Family Name</span><asp:Literal ID="KX_PCStudent_PNSurName" runat="server" /></li>
        <li><span>First Name</span><asp:Literal ID="KX_PCStudent_PNForeName" runat="server" /></li>
        <li><span>Date of birth [dd/mm/yyyy]</span><asp:Literal ID="KX_PCREGMGR_PNDob_FSd" runat="server" /></li>
        <li><span>Gender</span><asp:Literal ID="KX_PCStudent_PNVerboseGender" runat="server" /></li>
    </ol>
    <p>If any of these details are incorrect please contact registry at <asp:HyperLink runat="server" ID="KX_PCCUSTOMSETTING_PNAllString_GSURLPERIODRegistry_GTALL" Target="_blank" Text="" /></p>
    <div id="Nav" class="Clearfix">
        <asp:Button ID="KX_BC_RXB_RVBACK" runat="server" Text="Back" CssClass="Back" />
        <asp:Button ID="KX_BC_RXA_RVGO" runat="server" Text="Next" CssClass="Next" />
    </div>
</asp:Content>