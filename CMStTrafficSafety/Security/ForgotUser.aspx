<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ForgotUser.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ForgotUser" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><%@ Register TagPrefix="asp" Namespace="Recaptcha" Assembly="Recaptcha" %>
<asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
    <a id="StartOfPageContent"></a>
    <asp:UpdateProgress runat="server" id="UpdatePanel1_UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1">
			<ProgressTemplate>
				<div class="ajaxUpdatePanel">
				</div>
				<div style=" position:absolute; padding:30px;">
					<img src="../Images/updating.gif" alt="Updating" />
				</div>
			</ProgressTemplate>
		</asp:UpdateProgress>
		<asp:UpdatePanel runat="server" id="UpdatePanel1" UpdateMode="Conditional">
			<ContentTemplate>
				<input type="hidden" id="_clientSideIsPostBack" name="clientSideIsPostBack" runat="server" />
<table cellpadding="0" cellspacing="0" border="0"><tr><td><table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dheci" valign="middle"><asp:CollapsiblePanelExtender id="BlankFramePanelExtender" runat="server" TargetControlid="BlankFrameCollapsibleRegion" ExpandControlID="BlankFrameIcon" CollapseControlID="BlankFrameIcon" ImageControlID="BlankFrameIcon" ExpandedImage="../images/icon_panelcollapse.gif" CollapsedImage="../images/icon_panelexpand.gif" SuppressPostBack="true" />
<asp:ImageButton id="BlankFrameIcon" runat="server" ToolTip="&lt;%# GetResourceValue(&quot;Btn:ExpandCollapse&quot;) %&gt;" causesvalidation="False" imageurl="../images/icon_panelcollapse.gif" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Label runat="server" id="PanelTitle" Text="&lt;%# GetResourceValue(&quot;Title:ForgotUser&quot;, &quot;CMStTrafficSafety&quot;) %>">	</asp:Label></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="BlankFrameCollapsibleRegion" runat="server"><table class="dv" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dBody"><table cellpadding="0" cellspacing="0" border="0" class="dBody" align="center" width="100%"><tr><td style="padding-left: 8px; padding-top: 10px;  padding-bottom:10px;  padding-right:10px;"><b><asp:Label runat="server" id="ForgotUserInfoLabel" Text="&lt;%# GetResourceValue(&quot;Txt:UserEmailed&quot;, &quot;CMStTrafficSafety&quot;) %>">	</asp:Label> 
<asp:Label runat="server" id="ForgotUserErrorLabel" visible="False">	</asp:Label></b></td></tr><tr><td style="padding-left: 8px; padding-top: 10px;  padding-bottom:10px;"><nobr></nobr><asp:Label runat="server" id="EnterEmailLabel" Text="&lt;%# GetResourceValue(&quot;Txt:EnterEmail&quot;, &quot;CMStTrafficSafety&quot;) %>">	</asp:Label> 
<br /><br />
<asp:TextBox runat="server" id="Emailaddress" columns="50">	</asp:TextBox>
	<asp:RequiredFieldValidator runat="server" id="EmailaddressRequiredFieldValidator" ControlToValidate="Emailaddress" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueIsRequired&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;Emailaddress&quot;) %>" enabled="True">	</asp:RequiredFieldValidator></td></tr><tr><td style="padding-left: 8px; padding-top: 10px;  padding-bottom:10px;"><asp:Label runat="server" id="FillRecaptchaLabel" Text="&lt;%# GetResourceValue(&quot;Txt:EnterCaptcha&quot;, &quot;CMStTrafficSafety&quot;) %>">	</asp:Label> 
<br /><br />
<asp:RecaptchaControl ID="recaptcha" runat="server" theme="clean" PublicKey="Enter your key here" PrivateKey="Enter your key here" /></td></tr><tr><td style="padding-left:8px;padding-top:10px;padding-bottom:10px;text-align:center;"><table><tr><td style="width: 40%;">&nbsp;</td><td><CMStTrafficSafety:ThemeButton runat="server" id="SendButton" button-causesvalidation="True" button-commandname="ResetData" button-text="&lt;%# GetResourceValue(&quot;Btn:Send&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Send&quot;, &quot;CMStTrafficSafety&quot;) %>" commandname="EmailLinkButton_Command"></CMStTrafficSafety:ThemeButton></td><td style="width: 40%;">&nbsp;</td></tr></table>
 
</td></tr></table>
</td></tr></table>
</asp:panel></td></tr></table>
</td></tr></table></ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>