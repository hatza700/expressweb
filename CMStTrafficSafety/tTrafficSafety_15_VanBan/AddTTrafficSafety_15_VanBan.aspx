<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AddTTrafficSafety_15_VanBan.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AddTTrafficSafety_15_VanBan" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.AddTTrafficSafety_15_VanBan" %>

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

                        <CMStTrafficSafety:TTrafficSafety_15_VanBanRecordControl runat="server" id="TTrafficSafety_15_VanBanRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_15_VanBanTitle" Text="Thêm văn bản quy phạm pháp luật">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_15_VanBanRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_15_VanBanRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="MaHinhThucVanbanLabel" Text="Hình thức văn bản">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="MaHinhThucVanban" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="200px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="MaHinhThucVanbanFvLlsHyperLink" ControlToUpdate="MaHinhThucVanban" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_12_HinhThucVanBan" Field="TTrafficSafety_12_HinhThucVanBan_.MaHinhThuc" DisplayField="%3dTTrafficSafety_12_HinhThucVanBan.TenHinhThuc"></Selectors:FvLlsHyperLink> 
</td><td class="fls"><asp:Literal runat="server" id="MaChuyenNganhLabel" Text="Chuyên nghành">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="MaChuyenNganh" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="200px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="MaChuyenNganhFvLlsHyperLink" ControlToUpdate="MaChuyenNganh" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_14_ChuyenNganh" Field="TTrafficSafety_14_ChuyenNganh_.MaChuyenNganh" DisplayField="%3dTTrafficSafety_14_ChuyenNganh.TenChuyenNganh"></Selectors:FvLlsHyperLink> 
</td></tr><tr><td class="fls"><asp:Literal runat="server" id="MaLinhVucLabel" Text="Lĩnh vực">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="MaLinhVuc" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="200px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="MaLinhVucFvLlsHyperLink" ControlToUpdate="MaLinhVuc" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_11_LinhVuc" Field="TTrafficSafety_11_LinhVuc_.MaLinhVuc" DisplayField="%3dTTrafficSafety_11_LinhVuc.TenLinhVuc"></Selectors:FvLlsHyperLink> 
</td><td class="fls"><asp:Literal runat="server" id="MaCQBHLabel" Text="Cơ quan ban hành">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="MaCQBH" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="200px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="MaCQBHFvLlsHyperLink" ControlToUpdate="MaCQBH" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_13_CoQuanBanHanh" Field="TTrafficSafety_13_CoQuanBanHanh_.MaCQBH" DisplayField="%3dTTrafficSafety_13_CoQuanBanHanh.TenCQBH"></Selectors:FvLlsHyperLink> 
</td></tr><tr><td class="fls"><asp:Literal runat="server" id="NgayBanHanhLabel" Text="= &quot;Ngày ban hành&quot;">	</asp:Literal></td><td class="dfv"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="NgayBanHanh" Columns="20" MaxLength="20" cssclass="field_input" dataformat="dd/MM/yyyy" width="70px"></asp:TextBox></td>
<td style="padding-right: 5px; white-space:nowrap;">

</td>
<td>
<Selectors:CalendarExtendarClass runat="server" ID="NgayBanHanhCalendarExtender" TargetControlID="NgayBanHanh" CssClass="MyCalendar" Format="dd/MM/yyyy">
</Selectors:CalendarExtendarClass>&nbsp;
<asp:RequiredFieldValidator runat="server" id="NgayBanHanhRequiredFieldValidator" ControlToValidate="NgayBanHanh" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueIsRequired&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NgayBanHanh&quot;) %>" enabled="True" text="*"></asp:RequiredFieldValidator>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NgayBanHanhTextBoxMaxLengthValidator" ControlToValidate="NgayBanHanh" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NgayBanHanh&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td><td class="fls"><asp:Literal runat="server" id="TinhTrangLabel" Text="= &quot;Tình trạng văn bản&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="TinhTrang" Columns="50" MaxLength="50" cssclass="field_input" width="200px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TinhTrangTextBoxMaxLengthValidator" ControlToValidate="TinhTrang" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TinhTrang&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SoHieuVBLabel" Text="= &quot;Số hiệu Văn bản&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:TextBox runat="server" id="SoHieuVB" Columns="50" MaxLength="50" cssclass="field_input" width="200px"></asp:TextBox>&nbsp;
<asp:RequiredFieldValidator runat="server" id="SoHieuVBRequiredFieldValidator" ControlToValidate="SoHieuVB" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueIsRequired&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;SoHieuVB&quot;) %>" enabled="True" text="*"></asp:RequiredFieldValidator>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="SoHieuVBTextBoxMaxLengthValidator" ControlToValidate="SoHieuVB" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;SoHieuVB&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TrichYeuLabel" Text="= &quot;Trích yếu&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:TextBox runat="server" id="TrichYeu" MaxLength="50" columns="60" cssclass="field_input" rows="4" textmode="MultiLine" width="750px"></asp:TextBox>&nbsp;
<asp:RequiredFieldValidator runat="server" id="TrichYeuRequiredFieldValidator" ControlToValidate="TrichYeu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueIsRequired&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TrichYeu&quot;) %>" enabled="True" text="*"></asp:RequiredFieldValidator>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TrichYeuTextBoxMaxLengthValidator" ControlToValidate="TrichYeu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TrichYeu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TepDinhKemLabel" Text="= &quot;Tệp tin đính kèm&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:FileUpload runat="server" id="TepDinhKem" cssclass="field_input" width="750px"></asp:FileUpload></td></tr><tr><td class="fls"><asp:Literal runat="server" id="GhiChuLabel" Text="= &quot;Ghi chú&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:TextBox runat="server" id="GhiChu" MaxLength="50" columns="60" cssclass="field_input" rows="3" textmode="MultiLine" width="750px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="GhiChuTextBoxMaxLengthValidator" ControlToValidate="GhiChu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;GhiChu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:Literal runat="server" id="NguoiTao"></asp:Literal>  
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_15_VanBanRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveAndNewButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                