<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplateRedesign.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <script type="text/javascript">
        $(function () {
            var enddate = new Date('<asp:Literal runat="server" ID="KX_PCUSER_PNDynamicValueN_OTDateTime_FSD_ZZZZZ" />');
            
            $(".datepicker").datepicker(
                {
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    minDate: checkMinDate(),
                    maxDate: enddate
                }
            );
            $(".datepicker").keypress(function (e) {
                e.preventDefault();
            })
        });

        /** Sets the min date today if it has gone past the start date **/
        function checkMinDate() {
            var today = new Date();
            //Start date
            var startdate = new Date('<asp:Literal runat="server" ID="KX_PCUSER_PNDynamicValueM_OTDateTime_FSD_ZZZZZ" />');

            if (today > startdate) {
                return today;
            } else {
                return startdate;
            }
        };
    </script>  

    <div style="display: none;">
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
                <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <span data-control="logout1"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVStep1"/>

        <span data-control="ErrorMsg"><div class="alert alert-danger"><asp:Literal ID="KXError" runat="server"></asp:Literal></div></span>
        <span data-control="Nav">
            <asp:Button ID="KX_BC_RXS_RVBack" runat="server" Text="Back" CssClass="btn btn-default"/>
            <asp:Button ID="KX_BC_RXA_RVNext" runat="server" Text="Next" CssClass="btn btn-primary pull-right"  />
        </span>
        <span data-control="ArrivalQuestion">
            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWFalse">
                <asp:RadioButton ID="KX_PCSAYAPPUDF_UD116_PNFieldValue_SVYes_MO1" runat="server" GroupName="ArrivalQuestion" Text="Yes" AutoPostBack="true"/>
                <br />
                <asp:RadioButton ID="KX_PCSAYAPPUDF_UD116_PNFieldValue_SVNo_MO1" runat="server" GroupName="ArrivalQuestion" Text="No" AutoPostBack="true"/>
            </asp:Panel>
            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWTrue">
                 <asp:Label runat="server" ID="KX_PCSAYAPPUDF_UD116_PNFieldValue_RO1"></asp:Label>
                <br />
                <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes">
                    <br />
                    <p>Your chosen arrival slot:</p>
                    <asp:Label runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalDate_FSD" />
					<asp:PlaceHolder runat="server" ID="KX_PCSAYAPPARRIVALSLOT_VPArrivalHourFrom_CW0_CTNE">
						<span><asp:Literal runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalHourFrom" />:00 - <asp:Literal runat="server" ID="KX_PCSAYAPPARRIVALSLOT_PNArrivalHourTo" />:00</span>
					</asp:PlaceHolder>
					<asp:PlaceHolder runat="server" ID="KX_PCSAYAPPARRIVALSLOT_VPArrivalHourFrom_CW0">
						<span>10:00 - 16:00</span>
					</asp:PlaceHolder>
                </asp:Panel>
            </asp:Panel>
        </span>
        
        <span data-control="ArrivalDate">
            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWFalse_X">
                <asp:TextBox runat="server" ID="KX_PCSAYAPPUDF_UD117_PNFieldValue_MO1_DTArrivalDate" CssClass="Date datepicker" style="color: #003E74;font-weight: bold; padding-left:10px; padding-top:5px"></asp:TextBox>
            </asp:Panel>
            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWTrue_X">
                <asp:Label runat="server" ID="KX_PCSAYAPPUDF_UD117_PNFieldValue_RO1"></asp:Label>
            </asp:Panel>
        </span>
        
        <span data-control="ArrivalSlots">
            <asp:Panel runat="server" ID="KX_PCSAYAPP_VPIsInductionCompleted_CWFalse_XX">
                <asp:Panel runat="server" ID="KX_PCSAYAPPUDF_UD116_VPFieldValue_CWYes_XX">
                    <asp:Panel runat="server" ID="KX_PCUSERACC_VPBlockId_CWA842A851A_CTIN">
                        <asp:Table runat="server" ID="KX_PCARRIVALSLOTS_PNYArrayIndices_TAADDROW_TStblSlotRows_TEtblEmpty_TXGI_TH1" CssClass="arrivalSlots" Width="100%">
                        <asp:TableHeaderRow>
                        <asp:TableCell runat="server" ID="TableCell1">
                                <strong>Times / Dates</strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW0_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI0_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW1_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI1_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW2_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI2_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW3_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI3_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW4_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI4_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW5_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI5_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW6_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI6_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW7_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI7_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW8_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI8_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW9_CTGT">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTCOL_GI9_PNArrivalDate_FSd"></asp:Label></strong>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    </asp:Table>
                        <asp:Table Width="100%" runat="server" ID="tblSlotRows">
                        <asp:TableRow>
                        <asp:TableCell runat="server" ID="TableCell2">
                            <strong>
                                <asp:Label runat="server" ID="KX_PCARRIVALSLOTROW_PNFormattedTimesString"></asp:Label></strong>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW0_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX0_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW1_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX1_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW2_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX2_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW3_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX3_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW4_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX4_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW5_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX5_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW6_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX6_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW7_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX7_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW8_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX8_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                        <asp:TableCell runat="server" ID="KX_PCARRIVALSLOTS_VPXLength_CW9_CTGT_X">
                            <asp:RadioButton runat="server" ID="KX_SCAPPMGRSLOTXY_PCSAYAPPARRIVAL_PNArrivalSlotId_VPIsAvailable_RPIsUnavailable_GX9_IH1_SRArrivalSlotId_MO1_DTArrivalSPCSlot"
                                GroupName="KX_PCSAYAPPARRIVAL_PNArrivalSlotId_IH1_MO1"></asp:RadioButton>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
                        <asp:Table runat="server" ID="tblEmpty">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="11">
                                    No Arrival Slots Available
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </span>

    </div>
    <%--END DATA CONTROLS--%> 
    
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNInductionWhenCanIArrive_PNData" />
    <script type="text/javascript">
        var hubLink = $("li[data-nav='hub']"),
            currentNav = $("li[data-nav='true']");
       
        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVHub.ClientID%>').click();
        });

        currentNav.on("click", function () {
            var scope = this;
            var step = $('div.process-step__icon', scope).text();
            clickNav(step);
        });

        function clickNav(newStep) {
            switch (newStep) {
            case "1":
                $('#<%=KX_BC_RXS_RVStep1.ClientID%>').click();
                break;
            default:
                console.error("Navigation step not recognised!");
                break;
            }
        }
    </script>
</asp:Content>