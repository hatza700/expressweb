<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMedium" Src="../Shared/PaginationMedium.ascx" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_23_KieuNoiDung" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_23_KieuNoiDung.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_23_KieuNoiDung" %>
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

                        <CMStTrafficSafety:TTrafficSafety_23_KieuNoiDungRecordControl runat="server" id="TTrafficSafety_23_KieuNoiDungRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_23_KieuNoiDungTitle" Text="&lt;%#String.Concat(&quot;Traffic Safety 23 Kieu Noi Dung&quot;) %>">	</asp:Literal></td><td class="dhir"><asp:ImageButton runat="server" id="TTrafficSafety_23_KieuNoiDungDialogEditButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/iconEdit.gif" tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_23_KieuNoiDungRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_23_KieuNoiDungRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThuTu"></asp:Literal> </td><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianTaoLabel" Text="= &quot;Thời gian tạo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianTao"></asp:Literal> </td><td class="fls"><asp:Literal runat="server" id="IpTaoLabel" Text="= &quot;Ip tạo&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="IpTao"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> </td><td class="fls"><asp:Literal runat="server" id="ThoiGianSuaLabel" Text="= &quot;Thời gian sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianSua"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="IpSuaLabel" Text="= &quot;Ip sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="IpSua"></asp:Literal> </td><td class="dfv"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="KieuNoiDungLabel" Text="= &quot;Kiểu nội dung&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:Literal runat="server" id="KieuNoiDung"></asp:Literal> </td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_23_KieuNoiDungRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td><asp:TabContainer runat="server" id="TTrafficSafety_23_KieuNoiDungTabContainer">
 <asp:TabPanel runat="server" id="TTrafficSafety_21_QuanLyTrangChuTabPanel" HeaderText="Traffic Safety 21 Quan Ly Trang Chu">	<ContentTemplate>
  <CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuTableControl runat="server" id="TTrafficSafety_21_QuanLyTrangChuTableControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td><asp:panel id="TTrafficSafety_21_QuanLyTrangChuTableControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="pr"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%;"><tr><td><img src="../Images/paginationRowEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarDividerL.gif" alt="" /></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuNewButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/ButtonBarNew.gif" onmouseout="this.src='../Images/ButtonBarNew.gif'" onmouseover="this.src='../Images/ButtonBarNewOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuDeleteButton" causesvalidation="False" commandname="DeleteRecord" imageurl="../Images/ButtonBarDelete.gif" onmouseout="this.src='../Images/ButtonBarDelete.gif'" onmouseover="this.src='../Images/ButtonBarDeleteOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuExportExcelButton" causesvalidation="False" commandname="ExportDataExcel" imageurl="../Images/ButtonBarExcelExport.gif" onmouseout="this.src='../Images/ButtonBarExcelExport.gif'" onmouseover="this.src='../Images/ButtonBarExcelExportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:ExportExcel&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuImportButton" causesvalidation="False" commandname="ImportCSV" imageurl="../Images/ButtonBarImport.gif" onmouseout="this.src='../Images/ButtonBarImport.gif'" onmouseover="this.src='../Images/ButtonBarImportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Import&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><img src="../Images/ButtonBarDividerR.gif" alt="" /></td><td class="prspace"><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td><td class="pra"><CMStTrafficSafety:PaginationMedium runat="server" id="TTrafficSafety_21_QuanLyTrangChuPagination"></CMStTrafficSafety:PaginationMedium>
<!--To change the position of the pagination control, please search for "prspace" on the Online Help for instruction. -->
                      </td><td><img src="../Images/paginationRowEdgeR.gif" alt="" /></td><td></td></tr></table>
</td></tr><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)"><tr class="tch"><th class="thcnb" colspan="4"><img src="../Images/space.gif" height="1" width="1" alt="" /></th><th class="thcwb" style="padding:0px;vertical-align:middle;"><asp:CheckBox runat="server" id="TTrafficSafety_21_QuanLyTrangChuToggleAll" onclick="toggleAllCheckboxes(this);">	</asp:CheckBox></th><th class="thc" scope="col"><asp:LinkButton runat="server" id="TenModuleLabel" tooltip="Sort by TenModule" Text="= &quot;Tên module&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThuocBlockLabel" tooltip="Sort by ThuocBlock" Text="= &quot;Thuộc Block&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThuTuLabel1" tooltip="Sort by ThuTu" Text="= &quot;Thứ tự&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="HienThiTieuDeLabel" tooltip="Sort by HienThiTieuDe" Text="= &quot;Hiển thị tiêu đề&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ChuyenMucLabel" tooltip="Sort by ChuyenMuc" Text="= &quot;Danh mục tin tức&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="HoatDongLabel" tooltip="Sort by HoatDong" Text="= &quot;Hoạt động&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="SoLuongTinLabel" tooltip="Sort by SoLuongTin" Text="= &quot;Số lượng tin&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="NguoiTaoLabel1" tooltip="Sort by NguoiTao" Text="= &quot;Người tạo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianTaoLabel1" tooltip="Sort by ThoiGianTao" Text="= &quot;Thời gian tạo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="IpTaoLabel1" tooltip="Sort by IpTao" Text="= &quot;Ip tạo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="NguoiSuaLabel1" tooltip="Sort by NguoiSua" Text="= &quot;Người sửa&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianSuaLabel1" tooltip="Sort by ThoiGianSua" Text="= &quot;Thời gian sửa&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="IpSuaLabel1" tooltip="Sort by IpSua" Text="= &quot;Ip sửa&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th></tr><asp:Repeater runat="server" id="TTrafficSafety_21_QuanLyTrangChuTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuTableControlRow runat="server" id="TTrafficSafety_21_QuanLyTrangChuTableControlRow">
<tr><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuRowEditButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_edit.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:EditRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuRowCopyButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_copy.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:CopyRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_21_QuanLyTrangChuRowDeleteButton" causesvalidation="False" commandname="DeleteRecord" cssclass="button_link" imageurl="../Images/icon_delete.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:DeleteRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticwb"><asp:CheckBox runat="server" id="TTrafficSafety_21_QuanLyTrangChuRecordRowSelection" onclick="moveToThisTableRow(this);">	</asp:CheckBox></td><td class="ttc"><asp:Literal runat="server" id="TenModule"></asp:Literal> </td><td class="ttc"><asp:LinkButton runat="server" id="ThuocBlock" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="ThuTu1"></asp:Literal> </td><td class="ttc"><asp:LinkButton runat="server" id="HienThiTieuDe" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="ChuyenMuc"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="HoatDong"></asp:Literal> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="SoLuongTin"></asp:Literal> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="NguoiTao1"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="ThoiGianTao1"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="IpTao1"></asp:Literal> </td><td class="ttc" style="text-align: right;"><asp:Literal runat="server" id="NguoiSua1"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="ThoiGianSua1"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="IpSua1"></asp:Literal> </td></tr></CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuTableControl>

 </ContentTemplate></asp:TabPanel>
</asp:TabContainer></td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="OKButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="EditButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                