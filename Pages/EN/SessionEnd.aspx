<%@ Page Language="C#" MasterPageFile="~/templates/PageTemplate.master" AutoEventWireup="true"  CodeBehind="~/Classes/BasePage.cs" Inherits="BasePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <div id="PageContent" class="col-xs-12">
        <div class="col-sm-12">
            <div class="form jumbotron jumbotron-primary"> 
                <h1>Logging out</h1>
                <p>Please wait...</p>
                <div style="display: none"><input type="button" name="Login" class="LoginPage" onclick="window.location='<%: Page.ResolveUrl("~/StartPage.aspx") %>'" /></div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.LoginPage').click();
                    });
                </script>
            </div>
        </div>
    </div>   
</asp:Content>