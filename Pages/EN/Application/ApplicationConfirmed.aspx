<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="NavButtons"><asp:Button ID="KX_BC_RXS_RVMyDetails" runat="server" Text="Return to Hub"  CssClass="btn btn-default pull-right"/></span>
    </div>
    <%--END DATA CONTROLS--%> 
    
    <div class="row headrow">
        <div class="col-sm-12 col-xs-3 logoutwrapper pull-right">
            <button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button>
        </div>
        <div class="col-sm-12 col-xs-9 progresswrapper">
            <ol class="process reset-list clearfix">
                <li class="process-step" data-nav="hub">
                    <div><span class="tabNavItem__icon glyphicon glyphicon-home clickable"></span></div>
                    <div class="clickable">Accommodation Hub</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">1</div>
                    <div>Welcome</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">2</div>
                    <div>Preference<br/>selection</div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">3</div>
                    <div>
                        Medical<br />
                        information
                    </div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">4</div>
                    <div>
                        Additional<br />
                        information
                    </div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon">5</div>
                    <div>
                        Application<br />
                        review
                    </div>
                </li>
                <li class="process-step">
                    <div class="process-step__icon process-step--active">6</div>
                    <div>Finish</div>
                </li>
            </ol>
        </div>
    </div>

    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNApplicationConfirmedEN_PNData" />
    
    <script type="text/javascript">
        var hubLink = $("li[data-nav='hub'");

        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVMyDetails.ClientID%>').click();
        });
    </script>
</asp:Content>