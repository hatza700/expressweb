﻿<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Control Language="vb" AutoEventWireup="false" CodeFile="ThemeButton.ascx.vb" Inherits="CMStTrafficSafety.UI.ThemeButton" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><table class="buttonPadding" cellspacing="0" cellpadding="0" border="0" onmouseover="this.style.cursor='pointer'; return true;" onclick="clickLinkButtonText(this, event);"><tr><td class="bTL"><img src="../Images/space.gif" class="bTL" /></td><td class="bT"><img src="../Images/space.gif" class="bT" style="width: 100%;" /></td><td class="bTR"><img src="../Images/space.gif" class="bTR" /></td></tr><tr><td class="bL"><img src="../Images/space.gif" class="bL" style="height: 100%;" /></td><td class="bC"><asp:LinkButton CommandName="Redirect" runat="server" id="_Button" cssclass="button_link">		
	</asp:LinkButton></td><td class="bR"><img src="../Images/space.gif" class="bR" style="height: 100%;" /></td></tr><tr><td class="bBL"><img src="../Images/space.gif" class="bBL" /></td><td class="bB"><img src="../Images/space.gif" class="bB" style="width: 100%;" /></td><td class="bBR"><img src="../Images/space.gif" class="bBR" /></td></tr></table>