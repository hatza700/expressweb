<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="SendUserInfo.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/Email.master" Inherits="CMStTrafficSafety.UI.SendUserInfo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
    <a id="StartOfPageContent"></a>
    
                <table cellpadding="20" cellspacing="0" border="0" class="dBody"><tr><td colspan="2"><asp:Label runat="server" id="InformationLabel" Text="&lt;%# GetResourceValue(&quot;Txt:HereisSignin&quot;, &quot;CMStTrafficSafety&quot;) %>">	</asp:Label></td></tr><tr><td class="fls" style="padding-top: 30px; padding-bottom: 30px;"><asp:Literal runat="server" id="MyLoginInfo" Text="Username Password">	</asp:Literal></td><td class="dfv"></td></tr></table>
    
    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                