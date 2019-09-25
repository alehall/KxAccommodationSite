<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <link media="all" href='<%=Page.ResolveUrl("~/Resources/2016/css/ArrivalPassDefault.css") %>' type="text/css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("body").removeClass("ArrivalPass");
        });
    </script>

    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <asp:Label runat="server" CssClass="blockID" ID="KX_PCUSERACC_PNBlockId_XXX" />
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <span data-control="ArrivalDate">
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes">
                <span class="showArrivalSlots" style="display:none;"><asp:Literal runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalDate_FSD_ND1" /></span>
                <span class="showArrivalSlotsNonWood" style="display:none;">28 September 2019</span>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes_CTNE">
                <span><asp:Literal runat="server" ID="KX_PCSAYAPPUDF_UD117_PNFieldValue" /></span>
            </asp:PlaceHolder>
        </span>
        <span data-control="ArrivalTime">
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes_X">
				<asp:PlaceHolder runat="server" ID="KX_PCSAYAPPARRIVALSLOT_VPArrivalHourFrom_CW0_CTNE">
					<span><asp:Literal runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalHourFrom" />:00 - <asp:Literal runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalHourTo" />:00</span>
				</asp:PlaceHolder>
				<asp:PlaceHolder runat="server" ID="KX_PCSAYAPPARRIVALSLOT_VPArrivalHourFrom_CW0">
					<span>10:00 - 16:00</span>
				</asp:PlaceHolder>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes_CTNE_X">
                <span>10:00 - 16:00</span>
            </asp:PlaceHolder>
        </span>
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVHUB" runat="server" Text="Back to My Details" CssClass="btn btn-secondary"  /></span>
    </div>
    <%--END DATA CONTROLS--%> 

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNArrivalPass_PNData" />  
    
    <script>
        $(function () {
            var blockID=$('.blockID').text();
		    if ((blockID === "842" || blockID === "851"))
		    {
			    $('.showArrivalSlots').show();
		    }
		    else
		    {
			    $('.showArrivalSlotsNonWood').show();
		    }
        });
    </script> 
</asp:Content>