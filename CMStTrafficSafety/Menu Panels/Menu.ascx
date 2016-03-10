<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Control Language="vb" AutoEventWireup="false" CodeFile="Menu.ascx.vb" Inherits="CMStTrafficSafety.UI.Menu" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><table cellpadding="0" cellspacing="0" border="0"><tr><td class="MLMmenuVAlign"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="MLMmveTL"><img src="../Images/space.gif" height="1" width="1" alt="" /></td><td class="MLMmveT"><img src="../Images/space.gif" height="1" width="1" alt="" /></td><td class="MLMmveTR"><img src="../Images/space.gif" height="1" width="1" alt="" /></td></tr><tr><td colspan="3"><asp:literal id="lit_menu" runat="server" text="Text for literal goes here"></asp:literal> 
<asp:Menu ID="MultiLevelMenu" DataSourceID="SiteMapDataSource1" runat="server" StaticEnableDefaultPopOutImage="False" MaximumDynamicDisplayLevels="100" orientation="Vertical" CssClass="MLMmenuV"> 
							<StaticMenuItemStyle CssClass="MLMmvC" />
							<StaticHoverStyle CssClass="MLMmvoC" />
							<DynamicMenuStyle CssClass="MLMmenuVsub" />
							<DynamicMenuItemStyle CssClass="MLMsubmvC" />
							<DynamicHoverStyle CssClass="MLMsubmvoC" />
						</asp:Menu>
						<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="MenuElementsProvider" ShowStartingNode="false" />
					</td></tr><tr><td class="MLMmveBL"><img src="../Images/space.gif" height="1" width="1" alt="" /></td><td class="MLMmveB"><img src="../Images/space.gif" height="1" width="1" alt="" /></td><td class="MLMmveBR"><img src="../Images/space.gif" height="1" width="1" alt="" /></td></tr></table>
</td></tr></table>