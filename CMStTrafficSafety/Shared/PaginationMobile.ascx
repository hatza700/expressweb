<%@ Control Language="vb" AutoEventWireup="false" CodeFile="PaginationMobile.ascx.vb" Inherits="CMStTrafficSafety.UI.PaginationMobile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><table class="mobileHeaderPagination"><tr><td class="mobilePaginationAreaFirst"><asp:ImageButton runat="server" id="_FirstPage" causesvalidation="False" commandname="FirstPage" imageurl="../Images/MobileButtonFirst.png" tooltip="&lt;%# GetResourceValue(&quot;Btn:FirstPage&quot;, &quot;CMStTrafficSafety&quot;) %>" visible="False">		
	</asp:ImageButton></td><td class="mobilePaginationAreaPrevious"><asp:ImageButton runat="server" id="_PreviousPage" causesvalidation="False" commandname="PreviousPage" imageurl="../Images/MobileButtonPrevious.png" tooltip="&lt;%# GetResourceValue(&quot;Btn:PreviousPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="mobilePaginationAreaCurrentPage" nowrap="true">
<%# GetResourceValue("Txt:Page", "CMStTrafficSafety") %> <asp:Label runat="server" id="_CurrentPage">	</asp:Label>
<%# GetResourceValue("Txt:Of", "CMStTrafficSafety") %> <asp:Label runat="server" id="_TotalPages">	</asp:Label></td><td class="mobilePaginationAreaNext"><asp:ImageButton runat="server" id="_NextPage" causesvalidation="False" commandname="NextPage" imageurl="../Images/MobileButtonNext.png" tooltip="&lt;%# GetResourceValue(&quot;Btn:NextPage&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="mobilePaginationAreaLast"><asp:ImageButton runat="server" id="_LastPage" causesvalidation="False" commandname="LastPage" imageurl="../Images/MobileButtonLast.png" tooltip="&lt;%# GetResourceValue(&quot;Btn:LastPage&quot;, &quot;CMStTrafficSafety&quot;) %>" visible="False">		
	</asp:ImageButton></td></tr></table>