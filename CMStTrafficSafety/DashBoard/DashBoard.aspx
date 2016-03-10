<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="DashBoard.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.DashBoard" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
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

                <table cellpadding="0" cellspacing="0" border="0"><tr><td>
<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle">Tổng quan</td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="BlankFrameCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="tre" style="margin-top:-10px;padding-top:-20px;"><table cellpadding="0" cellspacing="0" border="0"><tr><td style="width:100%;background: #f1f4f7;"><h1 class="page-header_h">Tổng quan</h1>
<asp:literal id="lit_overview" runat="server" text="Text for literal goes here"></asp:literal>

<div id="x2" style="display:block;width:100%;height:auto;position:relative">
<table>
<tr>
<td style="width:70%;text-align:left;vertical-align:top;">

<asp:literal id="lit_quick_access10" runat="server" text="Text for literal goes here"></asp:literal>




</td>
<td style="width:30%;text-align:left;vertical-align:top;">
<asp:literal id="lit_log10" runat="server" text="Text for literal goes here"></asp:literal>

</td>

</tr>

</table>

</div>






<!---------------------->



<asp:literal id="lit_quick_log_ref" runat="server" text="Text for literal goes here"></asp:literal></td></tr></table>
</td></tr></table>
</asp:panel></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                