﻿<%@ Control Language="vb" AutoEventWireup="false" CodeFile="Pagination.ascx.vb" Inherits="CMStTrafficSafety.UI.Pagination" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><table cellspacing="0" cellpadding="0" border="0"><tr><td><img src="../Images/space.gif" width="10" height="1" alt="" /></td><td><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td><asp:ImageButton runat="server" id="_FirstPage" causesvalidation="False" commandname="FirstPage" imageurl="../Images/ButtonBarFirst.gif" onmouseout="this.src='../Images/ButtonBarFirst.gif'" onmouseover="this.src='../Images/ButtonBarFirstOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:FirstPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td><asp:ImageButton runat="server" id="_PreviousPage" causesvalidation="False" commandname="PreviousPage" imageurl="../Images/ButtonBarPrevious.gif" onmouseout="this.src='../Images/ButtonBarPrevious.gif'" onmouseover="this.src='../Images/ButtonBarPreviousOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:PreviousPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td class="prbg"><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControl("_PageSizeButton")) %><asp:TextBox runat="server" id="_CurrentPage" cssclass="Pagination_Input" maxlength="5" size="3" onkeyup="adjustPageSize(this, event.keyCode, 1, 999);">	</asp:TextBox><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControl("_PageSizeButton")) %></td><td class="prbg"><%# GetResourceValue("Txt:Of", "CMStTrafficSafety") %> <b><asp:Label runat="server" id="_TotalPages">	</asp:Label></b></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td><asp:ImageButton runat="server" id="_NextPage" causesvalidation="False" commandname="NextPage" imageurl="../Images/ButtonBarNext.gif" onmouseout="this.src='../Images/ButtonBarNext.gif'" onmouseover="this.src='../Images/ButtonBarNextOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:NextPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td><asp:ImageButton runat="server" id="_LastPage" causesvalidation="False" commandname="LastPage" imageurl="../Images/ButtonBarLast.gif" onmouseout="this.src='../Images/ButtonBarLast.gif'" onmouseover="this.src='../Images/ButtonBarLastOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:LastPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td><img src="../Images/ButtonBarPageItemDivider.gif" alt="" /></td><td class="prbg"><b><asp:Label runat="server" id="_TotalItems">	</asp:Label></b>&nbsp;<%# GetResourceValue("Txt:Items", "CMStTrafficSafety") %></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td class="prbg"><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControl("_PageSizeButton")) %><asp:TextBox runat="server" id="_PageSize" cssclass="Pagination_Input" maxlength="5" size="3" onkeyup="adjustPageSize(this, event.keyCode, 1, 999);">	</asp:TextBox><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControl("_PageSizeButton")) %></td><td class="prbg">/<%# GetResourceValue("Txt:Page", "CMStTrafficSafety") %></td><td><img src="../Images/ButtonBarDivider.gif" alt="" /></td><td class="prbg"><asp:LinkButton runat="server" id="_PageSizeButton" causesvalidation="False" commandname="PageSize" cssclass="button_link" text="&lt;%# GetResourceValue(&quot;Btn:Go&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Go&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:LinkButton></td><td><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td></tr></table>