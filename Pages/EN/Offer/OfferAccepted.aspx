<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <link href="<%= Page.ResolveUrl("~/resources/core/css/jquery-fancybox.min.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Page.ResolveUrl("~/resources/2016/css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6o8jI40Yz_EDJ6X5nULtrFwoTDU6l71o&sensor=false"></script>
    <script src="<%= Page.ResolveUrl("~/resources/core/js/jquery.fancybox.pack.js") %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/core/js/kx.preferences.js?v=" + DateTime.Now.ToString("yyyyMMdd")) %>" type="text/javascript"></script>
    <script src="<%= Page.ResolveUrl("~/resources/2016/js/kx.preferences.setup.js") %>" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).tooltip({ show: false });
    </script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server"> 
    
      
    <%--START DATA CONTROLS--%>
    <div style="display: none;">
        <span data-control="bannerImg">
            <div class="container cf"><img src='<%=Page.ResolveUrl("~/resources/2016/images/YourApplication.jpg")%>' alt="Your Application Banner" width="100%" style="margin-top:20px;"/></div>
        </span>
        <span data-control="BackButton"><asp:Button CssClass="btn-primary btn pull-right" ID="KX_BC_RXA_RVHome" Text="Return to Hub Page" runat="server" /><br/><br/>
        </span> 
        <div data-control="KXError"><div class="alert alert-danger"><asp:Literal runat="server" ID="KxError" /></div></div>
        <asp:Button runat="server" ID="KX_BC_RXS_RVHub"/>
        <asp:Button runat="server" ID="KX_BC_RXS_RVLogout"/>
        <span data-control="logout"><button class="logout btn btn-link pull-right" onclick="$('#<%=KX_BC_RXS_RVLogout.ClientID%>').click(); return false;">Logout <span class="glyphicon glyphicon-log-out"></span></button></span>
    </div>
    <%--END DATA CONTROLS--%> 
    <%--Resource--%>
    <asp:Literal runat="server" ID="KX_PCRESOURCE_RNOfferAcceptedEN_PNData" />
       <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6o8jI40Yz_EDJ6X5nULtrFwoTDU6l71o&sensor=false"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('.loading').remove();
            $('.preference').preference({
                Kxdata: '.kxdata',
                pintitle: '.pintitle',
                customvalue1: '.room-band',
                customvalue2: '.location',
                customvalue3: '.roomtype',
                customvalue4: '.catered',
                customvalue5: '.price',
                customvalue6: '.letlength ',
                //FANCYBOX
                imagesDisplayStyle: 'lightbox',
                imageGalleryWrapper: '.fancybox',
                roomThumbnail: '.thumb',
                removeFromBasketButton: true,
                preferencenumber: ~ ~($('.MaxPreferences').text()),
                minpreferencenumber: ~ ~($('.MinPreferences').text()),
                testpreferences: false,
                amountofclones: 3,
                preferenceselecttype: 'select',
                selectbuttonempty: 'Select preference',
                tabs: true,
                maxpreferencesreached: function () {
                    //$('.counter').addClass('hide');
                },
                onPreferenceRemove: function (remaining, max, min) {
                    $('.cleartoproceed').addClass('hide');
                    if (remaining >= min) {
                        if ($('.termsandconditions').is(':checked')) {
                            $('.confirm-error').removeClass('hide');
                        }
                        //$('.counter').addClass('hide');

                    } else {
                        if ($('.termsandconditions').is(':checked')) {
                            $('.confirm-error').addClass('hide');
                        }
                        $('.counter').removeClass('hide');
                    }
                },
                onPreferenceAdd: function (remaining, max, min) {
                    if (remaining >= min) {
                        $('.confirm-error').addClass('hide');
                        $('.cleartoproceed').removeClass('hide');
                    } else {
                        $('.confirm-error').addClass('hide');
                        $('.counter').removeClass('hide');

                    }
                },
                stickyDiv: false,
                tabNavigationLinks: '.tabnav a',
                tabContent: '.tab-content > div',
                tabShowSpeed: 0,
                tabHideSpeed: 0,
                mapType: google.maps.MapTypeId.ROADMAP,
                mapcanvas: '.map-canvas',
                mapZoom: 11,
                comparefunctionality: true,
                removebasketPreferencecontent: '<img src="../../../resources/2016/images/remove-icon.png" alt="Remove preference icon" />',
                //removeFromBasketButton: true,
                dropdownbasketline: function (numberchanged, removeFromBasket, customvalueArray) {
                    var basketline = $(
                        '<li class="clearfix">' +
                            '<div class="row-fluid">' +
                                '<div class="col-xs-2 text-center col-collapse-left">' +
                                    '<span class="number-circle">' +
                                        numberchanged +
                                    '</span>' +
                                '</div>' +
                                '<div class="col-xs-8 chosen-room col-collapse">' +
                                    customvalueArray[1] +     
                                '</div>' +
                                '<div class="drag-handle col-xs-2 col-collapse">' +
                                    removeFromBasket +
                                '</div>' +
                            '</div>' +
                        '</li>');
                    return basketline;
                },
                comparetemplate: function (index, selectpreffromcompare, roominfomation, compareRoomClass, prefId, dropdownselectedNumber) {

                    var comparebox = $(
                        '<div class="' + compareRoomClass + ' compare' + index + '" data-prefid="' + prefId + '" data-prefnum="' + dropdownselectedNumber + '">' +
                            '<img src="' + roominfomation.imagethumb.url + '" alt="' + roominfomation.imagethumb.alt + '" title="' + roominfomation.imagethumb.title + '" />' +
                            '<h2 class="text-center">' + roominfomation.info.roomName + '</h2>' +
                            selectpreffromcompare +
                            '<div class="customValuesCompare">' +
                                '<p class="text-center">' +
                                    roominfomation.info.customvalues[1] +
                                '</p>' +
                                '<p class="text-center">' +
                                    roominfomation.info.customvalues[2] +
                                '</p>' +
                                '<p class="text-center">' +
                                    roominfomation.info.customvalues[4] +
                                '</p>' +
                            '</div>' + 
                            '<button type="button" class="btn btn-reset compare-remove">Remove from Compare</button>' +
                        '</div>'
                    );

                    return comparebox;
                },
            });
        });
    </script>  
        <script type="text/javascript">
        var hubLink = $("li[data-nav='hub']"),
            currentNav = $("li[data-nav='true']");
        
        hubLink.on("click", function () {
            $('#<%=KX_BC_RXS_RVHub.ClientID%>').click();
        });


    </script> 
</asp:Content>