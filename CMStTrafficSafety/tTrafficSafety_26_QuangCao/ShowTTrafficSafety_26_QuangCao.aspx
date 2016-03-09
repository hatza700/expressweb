<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_26_QuangCao" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_26_QuangCao.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_26_QuangCao" %>
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

                        <CMStTrafficSafety:TTrafficSafety_26_QuangCaoRecordControl runat="server" id="TTrafficSafety_26_QuangCaoRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_26_QuangCaoTitle" Text="Xem chi tiết quảng cáo">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_26_QuangCaoRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_26_QuangCaoRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="KhachHangLabel" Text="= &quot;Khách hàng quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="KhachHang" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TenQuangCaoLabel" Text="= &quot;Tên quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TenQuangCao"></asp:Literal></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DuongDanAnhLabel" Text="= &quot;Ảnh quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DuongDanAnh"></asp:Literal></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="LinkLienKetLabel" Text="= &quot;Địa chỉ website&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="LinkLienKet"></asp:Literal></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ViTriLabel" Text="= &quot;Vị trí quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="ViTri" causesvalidation="False" commandname="Redirect"></asp:LinkButton></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianBatDauLabel" Text="= &quot;Thời gian bắt đầu&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianBatDau"></asp:Literal></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianKetThucLabel" Text="= &quot;Thời gian kết thúc&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianKetThuc"></asp:Literal></td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThuTu"></asp:Literal> </td><td class="fls"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:Literal runat="server" id="HoatDong"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_26_QuangCaoRecordControl>

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
                