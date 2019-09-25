<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<link href="<%= Page.ResolveUrl("~/resources/js/jquery-date-range-picker-master/daterangepicker.css") %>" rel="stylesheet" type="text/css" />--%>
    <link href="<%= Page.ResolveUrl("~/resources/css/jquery.fancybox.css") %>" rel="stylesheet" type="text/css" />

    <%--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6o8jI40Yz_EDJ6X5nULtrFwoTDU6l71o&sensor=false"></script>
    <script src="<%= Page.ResolveUrl("~/resources/js/gmaps.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/js/mapping.js") %>" type="text/javascript"></script>--%>
    <script src="<%= Page.ResolveUrl("~/resources/js/stickysidebar.jquery.min.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/js/json2.min.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/js/jquery-date-range-picker-master/moment.min.js") %>" type="text/javascript"></script>
    <%--<script src="<%= Page.ResolveUrl("~/resources/js/preferences.old.js") %>" type="text/javascript"></script>--%>
    <%--<script src="<%= Page.ResolveUrl("~/resources/js/jquery-date-range-picker-master/jquery.daterangepicker.js") %>" type="text/javascript"></script>--%>
    
    <script src="<%= Page.ResolveUrl("~/resources/js/jquery.fancybox.pack.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/js/kx.preferences.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/demo/js/kx.preferences.setup.js") %>" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <div>
        <span data-control="AllocateButton"><asp:Button runat="server" ID="KX_BC_RXS_RVallocate" Text="Continue" CssClass="ButtonSecondary ButtonNext book-now-allocate"></asp:Button></span>
        <asp:Label ID="KX_PCEXT_PNMinPreferences" CssClass="MinPreferences" runat="server"></asp:Label>
        <asp:Label ID="KX_PCEXT_PNMaxPreferences" CssClass="max-preferences" runat="server"></asp:Label>
        <asp:Label ID="KX_PCUSER_PNKxStudentId" CssClass="KxStudentID" runat="server"></asp:Label>
        <asp:TextBox ID="KX_PCSTUDENT_PNGender" CssClass="DATAGender" runat="server"></asp:TextBox>
        <asp:Label ID="KX_PCSAYAPP_PNAcademicYearId" CssClass="AcademicYearID" runat="server"></asp:Label>
        <asp:TextBox runat="server" ID="KX_PCUSER_PNDynamicValue1" CssClass="DATAPreferenceAvailabilityID"></asp:TextBox>
        <asp:TextBox runat="server" ID="KX_PCUSER_PNDynamicValue2" CssClass="DATAResidentialRoomID"></asp:TextBox>
        <asp:PlaceHolder runat="server" ID="KX_PCAYS_VPApplicationDates_CWTrue">
            <fieldset class="SessionStayDates"><legend><span>Dates of stay</span></legend>
                <ol>
                    <li>Arrival date</li>
                    <li>Departure date</li>
                    <li class="NewRow"><asp:TextBox runat="server" ID="KX_PCSAYAPP_PNSessionStartDate_FSddHYPHENMMHYPHENyyyy_MO1_DTDepartureDate" CssClass="DatesOfStay DATAStayingFrom"></asp:TextBox></li>
                    <li><asp:TextBox runat="server" ID="KX_PCSAYAPP_PNSessionEndDate_FSddHYPHENMMHYPHENyyyy_MO1_DTDepartureDate" CssClass="DatesOfStay DATAStayingTo"></asp:TextBox></li>
                </ol>
            </fieldset>
        </asp:PlaceHolder>
        <div data-control="KXError">
            <div class="alert alert-danger"><asp:Literal runat="server" ID="KxError" /></div>
        </div>
        <span data-control="RemoveImage"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/RemovePref.png" /></span> 
        <span data-control="ConfirmCheckBox"><asp:CheckBox ID="KX_PCSAYAPPUDF_UD10_PNFieldValue_CVYes_CR1_DTAcknowledgeSPCcannotSPCbeSPCguaranteed_XX_SCWORKFLOW_VPWorkflowName_CWPreferences_CTNE" runat="server" Text="Text" /></span> 
        <span data-control="ContinueButton"><asp:Button ID="KX_BC_RXA_RVGO_PCWORKFLOW_VPWorkflowName_CWPreferences_CTNE" runat="server" Text="Continue" CssClass="btn btn-primary pull-right" /></span> 
        <span data-control="BackButton"><asp:Button ID="KX_BC_RXS_RVBACK_PCWORKFLOW_VPWorkflowName_CWPreferences_CTNE" runat="server" Text="Back" CssClass="btn btn-secondary" /></span> 
        <span data-control="BackButton2"><asp:Button ID="KX_BC_RXS_RVBACK_PCWORKFLOW_VPWorkflowName_CWPreferences_CTNE_X" runat="server" Text="Back" CssClass="btn btn-secondary" /></span>
        <div data-control="Preferences"><asp:PlaceHolder runat="server" ID="phPreferenceResults"></asp:PlaceHolder></div>

        <asp:PlaceHolder runat="server" ID="phPreferenceTemplate">
            <div class="RoomRow " data-prefid="<asp:Literal ID='KX_PCPRFMGRRESULT_PNPreferenceId_x' runat='server' />">
                <div class="row">
                    <asp:Image runat="server" ID="KX_PCPRFMGRRESULT_PNTempString2" CssClass="imageURL col-md-4 img-responsive img-thumbnail" />
                    <div class="col-md-6">
                        <asp:Literal runat="server" ID="KX_PCRESOURCE_RNRoomOptionsENRoomDetailsTemplate_PNData" />
                        <div class="rowData hide">
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNTempString2_XX" CssClass="imageURLSource"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNTempDecimal1" CssClass="DATAPrice"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNTempDecimal2" CssClass="DATAPriceTot"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNPreferenceId" CssClass="DATAID"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNCustomField1" CssClass="DATAQuietRoom"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNCustomField2" CssClass="DATAWelshSpeaker"></asp:Label>
                            <asp:Label runat="server" ID="KX_PCPRFMGRRESULT_PNSingleSexArea" CssClass="DATASingleSex"></asp:Label>
                            <asp:Label ID="KX_PCPRFMGRRESULT_PNTempInt2" runat="server" CssClass="AreaID"></asp:Label>
                        </div>
                    </div>
                    <div class="RoomSelect col-md-2">
                        <h3 class="greenText"><strong>&pound;<asp:Literal runat="server" ID="KX_PCPRFMGRRESULT_PNTempDecimal2_FSN" /></strong></h3>
                        <%--<span class="showArrow" runat="server" id="KX_PCPRFMGRRESULT_VPTempInt2_CW0_X"><asp:Literal runat="server">Select the order of preference</asp:Literal></span>--%>
                        <div class="preference-selection">
                            <button type="button" title="Add To The Basket" class="preference-button select btn pull-right"><span>+</span>Select preference</button>
                            <asp:TextBox ID="KX_PCPRFMGRRESULT_PNPreferenceNumber" CssClass="hide" runat="server" />
                        </div>
                    </div>
                </div>  
                <div class="row">
                    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNRoomOptionsENTabs_PNData" />
                </div>         
            </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="phNoPreferenceTemplate">
            <p>No residences currently have availability</p>
        </asp:PlaceHolder>
    </div>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNRoomOptionsEN_PNData" />
</asp:Content>