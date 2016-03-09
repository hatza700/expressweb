<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_25_KhachHangQuangCao.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_25_KhachHangQuangCao" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_25_KhachHangQuangCao" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMedium" Src="../Shared/PaginationMedium.ascx" %>

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

                        <CMStTrafficSafety:TTrafficSafety_25_KhachHangQuangCaoRecordControl runat="server" id="TTrafficSafety_25_KhachHangQuangCaoRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_25_KhachHangQuangCaoTitle" Text="Xem chi tiết khách hàng quảng cáo">	</asp:Literal></td><td class="dhir"><asp:ImageButton runat="server" id="TTrafficSafety_25_KhachHangQuangCaoDialogEditButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/iconEdit.gif" tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="TenKhachHangLabel" Text="= &quot;Tên khách hàng/công ty quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TenKhachHang"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiLabel" Text="= &quot;Địa chỉ KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DiaChi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailLabel" Text="= &quot;Email KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="Email"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SoDienThoaiLabel" Text="= &quot;Số điện thoại KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="SoDienThoai"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiDaiDienLabel" Text="= &quot;Người đại diện cho KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiDaiDien"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiNguoiDaiDienLabel" Text="= &quot;Địa chỉ người đại diện&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DiaChiNguoiDaiDien"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailNguoiDaiDienLabel" Text="= &quot;Email người đại diện&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="EmailNguoiDaiDien"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SDTNguoiDaiDienLabel" Text="= &quot;Số điện thoại người đại diện KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="SDTNguoiDaiDien"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> 
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> 
<asp:Literal runat="server" id="IpSua"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianSua"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_25_KhachHangQuangCaoRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td><asp:TabContainer runat="server" id="TTrafficSafety_25_KhachHangQuangCaoTabContainer">
 <asp:TabPanel runat="server" id="TTrafficSafety_26_QuangCaoTabPanel" HeaderText="Các quảng cáo của khách hàng">	<ContentTemplate>
  <CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl runat="server" id="TTrafficSafety_26_QuangCaoTableControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td><asp:panel id="TTrafficSafety_26_QuangCaoTableControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="pr"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%;"><tr><td><img src="../Images/paginationRowEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarDividerL.gif" alt="" /></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoNewButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/ButtonBarNew.gif" onmouseout="this.src='../Images/ButtonBarNew.gif'" onmouseover="this.src='../Images/ButtonBarNewOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoDeleteButton" causesvalidation="False" commandname="DeleteRecord" imageurl="../Images/ButtonBarDelete.gif" onmouseout="this.src='../Images/ButtonBarDelete.gif'" onmouseover="this.src='../Images/ButtonBarDeleteOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoExportExcelButton" causesvalidation="False" commandname="ExportDataExcel" imageurl="../Images/ButtonBarExcelExport.gif" onmouseout="this.src='../Images/ButtonBarExcelExport.gif'" onmouseover="this.src='../Images/ButtonBarExcelExportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:ExportExcel&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoImportButton" causesvalidation="False" commandname="ImportCSV" imageurl="../Images/ButtonBarImport.gif" onmouseout="this.src='../Images/ButtonBarImport.gif'" onmouseover="this.src='../Images/ButtonBarImportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Import&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><img src="../Images/ButtonBarDividerR.gif" alt="" /></td><td class="prspace"><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td><td class="pra"><CMStTrafficSafety:PaginationMedium runat="server" id="TTrafficSafety_26_QuangCaoPagination"></CMStTrafficSafety:PaginationMedium>
<!--To change the position of the pagination control, please search for "prspace" on the Online Help for instruction. -->
                      </td><td><img src="../Images/paginationRowEdgeR.gif" alt="" /></td><td></td></tr></table>
</td></tr><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)"><tr class="tch"><th class="thcnb" colspan="4"><img src="../Images/space.gif" height="1" width="1" alt="" /></th><th class="thcwb" style="padding:0px;vertical-align:middle;"><asp:CheckBox runat="server" id="TTrafficSafety_26_QuangCaoToggleAll" onclick="toggleAllCheckboxes(this);">	</asp:CheckBox></th><th class="thc" scope="col"><asp:LinkButton runat="server" id="DuongDanAnhLabel" tooltip="Sort by DuongDanAnh" Text="= &quot;Ảnh quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="TenQuangCaoLabel" tooltip="Sort by TenQuangCao" Text="= &quot;Tên quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ViTriLabel" tooltip="Sort by ViTri" Text="= &quot;Vị trí quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="LinkLienKetLabel" tooltip="Sort by LinkLienKet" Text="= &quot;Địa chỉ website&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianBatDauLabel" tooltip="Sort by ThoiGianBatDau" Text="= &quot;Thời gian bắt đầu&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianKetThucLabel" tooltip="Sort by ThoiGianKetThuc" Text="= &quot;Thời gian kết thúc&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThuTuLabel" tooltip="Sort by ThuTu" Text="= &quot;Thứ tự&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="HoatDongLabel" tooltip="Sort by HoatDong" Text="= &quot;Hoạt động&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th></tr><asp:Repeater runat="server" id="TTrafficSafety_26_QuangCaoTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow runat="server" id="TTrafficSafety_26_QuangCaoTableControlRow">
<tr><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowEditButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_edit.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:EditRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowCopyButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_copy.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:CopyRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowDeleteButton" causesvalidation="False" commandname="DeleteRecord" cssclass="button_link" imageurl="../Images/icon_delete.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:DeleteRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticwb"><asp:CheckBox runat="server" id="TTrafficSafety_26_QuangCaoRecordRowSelection" onclick="moveToThisTableRow(this);">	</asp:CheckBox></td><td class="ttc"><asp:Literal runat="server" id="DuongDanAnh"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="TenQuangCao"></asp:Literal> </td><td class="ttc" style="text-align: right;"><asp:LinkButton runat="server" id="ViTri" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td><td class="ttc"><asp:Literal runat="server" id="LinkLienKet"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="ThoiGianBatDau"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="ThoiGianKetThuc"></asp:Literal> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="ThuTu"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="HoatDong"></asp:Literal> </td></tr></CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl>

 </ContentTemplate></asp:TabPanel>
</asp:TabContainer></td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="OKButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="EditButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                