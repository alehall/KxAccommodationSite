<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/PageTemplateRedesign.master" AutoEventWireup="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    
    
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="NavButtons">
            <asp:Button ID="KX_BC_RXA_RVBack" runat="server" Text="Return to Hub Page" class="btn btn-primary pull-right" />
        </span>
        <asp:Button runat="server" ID="KX_BC_RXS_RVWelcome" />
        <asp:Button runat="server" ID="KX_BC_RXS_RVPreferences" />
        <asp:Button runat="server" ID="KX_BC_RXS_RVMedical"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVAdditional"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <div class="row headrow">
        <div class="col-sm-12 col-xs-3 logoutwrapper pull-right">
            <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
        </div>
        <div class="col-sm-12 col-xs-9 progresswrapper">
            <ol class="process reset-list clearfix">
                <li class="process-step">
                    <div><span class="tabNavItem__icon glyphicon glyphicon-home"></span></div>
                    <div>Accommodation hub</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">1</div>
                    <div class="clickable">Welcome</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">2</div>
                    <div class="clickable">Preferences page</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">3</div>
                    <div>Medical<br />
                        Details</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">4</div>
                    <div>Additional<br />
                        information</div>
                </li>

                <li class="process-step">
                    <div class="process-step__icon">5</div>
                    <div>Application<br />
                        review</div>
                </li>
                <li class="process-step process-step--active">
                    <div class="process-step__icon">6</div>
                    <div>Finish</div>
                </li>
            </ol>
        </div>
    </div>

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationSubmittedReviewEN_PNData" />    

    <script type="text/javascript">
        var showMedicaDetails = '<asp:literal runat="server" ID="KX_PCSAYAPPUDF_PNFieldValue_UD38" />' === 'No';

        if (showMedicaDetails) {
            $('.showHideMedicalDetails').hide();
        }
    </script>
    
    <div style="display: none;">

        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPAddress_CWXNB">
            <script type="text/javascript">
                $('.showAddress').show();
            </script>
        </asp:PlaceHolder>        
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPTown_CWXNB">
            <script type="text/javascript">
                $('.showTown').show();
            </script>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPCounty_CWXNB">
            <script type="text/javascript">
                $('.showCounty').show();
            </script>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPCountry_CWXNB">
            <script type="text/javascript">
                $('.showCountry').show();
            </script>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="KX_PCCURRENTADDRESS_VPPostcode_CWXNB">
            <script type="text/javascript">
                $('.showPostCode').show();
            </script>
        </asp:PlaceHolder>
    </div>
</asp:Content>
