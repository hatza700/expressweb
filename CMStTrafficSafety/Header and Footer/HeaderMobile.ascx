<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButtonMobile" Src="../Shared/ThemeButtonMobile.ascx" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Control Language="vb" AutoEventWireup="false" CodeFile="HeaderMobile.ascx.vb" Inherits="CMStTrafficSafety.UI.HeaderMobile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
    <table cellpadding="0" cellspacing="0" border="0" width="100%" class="mobileHeader"><tr><td><table style="width: 100%"><tr><td class="mobileHeaderLeft"><asp:Image runat="server" id="_Logo" alt="&lt;%# GetResourceValue(&quot;Txt:PageHeader&quot;, &quot;CMStTrafficSafety&quot;) %>" imageurl="../Images/MobileLogo.png" style="border-width:0px;">		
	</asp:Image></td><td class="mobileHeaderTitle" style="width: 64%"></td><td class="mobileHeaderOptions">

    <asp:CollapsiblePanelExtender id="SettingsPanelExtenderMobile" runat="server" TargetControlid="SettingsCollapsibleRegionMobile" ExpandControlID="SettingsIconMobile" CollapseControlID="SettingsIconMobile" ImageControlID="SettingsIconMobile" ExpandedImage="../images/MobileButtonSettingsCollapse.png" CollapsedImage="../images/MobileButtonSettingsExpand.png" Collapsed="true" SuppressPostBack="true" />
    <asp:ImageButton id="SettingsIconMobile" runat="server" ToolTip="<%# GetResourceValue(&quot;Btn:ExpandCollapse&quot;) %>" causesvalidation="False" imageurl="../images/MobileButtonSettingsExpand.png" />
</td><td class="mobileHeaderRight"><CMStTrafficSafety:ThemeButtonMobile runat="server" id="_SignIn" button-causesvalidation="False" button-commandname="ShowSignIn" button-text="" button-tooltip=""></CMStTrafficSafety:ThemeButtonMobile>


</td></tr></table>
</td></tr><tr><td class="mobileBodyText"><asp:Label runat="server" id="_UserStatusLbl" cssclass="mobileSignInStatus">	</asp:Label></td></tr></table>

    </td></tr><tr><td>
    <asp:panel id="SettingsCollapsibleRegionMobile" style="display: none; overflow: hidden; height: 0px; margin: 0px;" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileFieldValueOnBottom"><asp:dropdownlist id="LanguageSelector" runat="server" cssclass="mobileFilterInput" AutoPostBack="true"></asp:dropdownlist></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:dropdownlist id="ThemeSelector" runat="server" cssclass="mobileFilterInput" AutoPostBack="true"></asp:dropdownlist></td></tr></table>

    </asp:panel>
    </td></tr></table>