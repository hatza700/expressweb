<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_21_QuanLyTrangChu.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_21_QuanLyTrangChu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_21_QuanLyTrangChu" %>

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

                        <CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuRecordControl runat="server" id="TTrafficSafety_21_QuanLyTrangChuRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_21_QuanLyTrangChuTitle" Text="Sửa module">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_21_QuanLyTrangChuRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_21_QuanLyTrangChuRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="TenModuleLabel" Text="= &quot;Tên module&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="3"><asp:TextBox runat="server" id="TenModule" MaxLength="50" columns="60" cssclass="field_input" rows="2" textmode="MultiLine" width="750px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TenModuleTextBoxMaxLengthValidator" ControlToValidate="TenModule" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TenModule&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuocBlockLabel" Text="= &quot;Thuộc Block&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="ThuocBlock" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="300px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="ThuocBlockFvLlsHyperLink" ControlToUpdate="ThuocBlock" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_20_TrangChu_Block" Field="TTrafficSafety_20_TrangChu_Block_.id" DisplayField="%3dTTrafficSafety_20_TrangChu_Block.Block"></Selectors:FvLlsHyperLink> 
</td><td class="dfv" style="white-space:nowrap;"></td><td class="dfv" style="white-space:nowrap;"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="KieuNoiDungLabel" Text="= &quot;Kiểu module&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="KieuNoiDung" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="300px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="KieuNoiDungFvLlsHyperLink" ControlToUpdate="KieuNoiDung" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_23_KieuNoiDung" Field="TTrafficSafety_23_KieuNoiDung_.id" DisplayField="%3d+TTrafficSafety_23_KieuNoiDung.KieuNoiDung"></Selectors:FvLlsHyperLink></td><td class="dfv" style="white-space:nowrap;"><asp:Literal runat="server" id="ChuyenMucLabel" Text="= &quot;Danh mục tin tức&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="ChuyenMuc" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="300px"></asp:DropDownList></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HienThiTieuDeLabel" Text="= &quot;Hiển thị tiêu đề&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="HienThiTieuDe" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="300px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="HienThiTieuDeFvLlsHyperLink" ControlToUpdate="HienThiTieuDe" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_22_HienThiTieuDeModule" Field="TTrafficSafety_22_HienThiTieuDeModule_.id" DisplayField="%3dTTrafficSafety_22_HienThiTieuDeModule.KieuHienThi"></Selectors:FvLlsHyperLink></td><td class="dfv" style="white-space:nowrap;"></td><td class="dfv" style="white-space:nowrap;"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SoLuongTinLabel" Text="= &quot;Số lượng tin&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="SoLuongTin" Columns="14" MaxLength="14" cssclass="field_input" width="50px"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="SoLuongTinTextBoxMaxLengthValidator" ControlToValidate="SoLuongTin" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;SoLuongTin&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td><td class="dfv" style="white-space:nowrap;"></td><td class="dfv" style="white-space:nowrap;"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="field_input" width="50px"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td><td class="dfv"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox></td><td class="dfv"></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal>  
<asp:Literal runat="server" id="IpSua"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianSua"></asp:Literal></td><td class="dfv"></td><td class="dfv"></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_21_QuanLyTrangChuRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                