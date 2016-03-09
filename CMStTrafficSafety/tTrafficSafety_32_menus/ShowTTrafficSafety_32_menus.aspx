<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_32_menus.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_32_menus" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_32_menus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

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

                <table cellpadding="0" cellspacing="0" border="0"><tr><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("CancelButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveButton"))%>

                        <CMStTrafficSafety:TTrafficSafety_32_menusRecordControl runat="server" id="TTrafficSafety_32_menusRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_32_menusTitle" Text="Xem chi tiết menu">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_32_menusRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_32_menusRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="KieuMenuLabel" Text="= &quot;Kiểu Menu&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="KieuMenu"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="DanhMucIDLabel1" Text="Danh Muc">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DanhMucID"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TenMenuLabel" Text="= &quot;Tên menu&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TenMenu"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="LienKetLabel" Text="= &quot;Liên kết&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="LienKet"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TargetsLabel" Text="= &quot;Target Window&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="Targets"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThuTu"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="HoatDong"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> 
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> 
<asp:Literal runat="server" id="IpSua"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianSua"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_32_menusRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="OKButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="EditButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                