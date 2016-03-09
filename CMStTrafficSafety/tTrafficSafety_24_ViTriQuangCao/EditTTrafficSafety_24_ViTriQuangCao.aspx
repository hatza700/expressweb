<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMedium" Src="../Shared/PaginationMedium.ascx" %>

<%@ Register Namespace="CMStTrafficSafety.UI" TagPrefix="custom" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_24_ViTriQuangCao.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_24_ViTriQuangCao" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_24_ViTriQuangCao" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>
<asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
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

                        <CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoRecordControl runat="server" id="TTrafficSafety_24_ViTriQuangCaoRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_24_ViTriQuangCaoTitle" Text="&lt;%#String.Concat(GetResourceValue(&quot;Title:Edit&quot;),&quot; Traffic Safety 24 Vi Tri Quang Cao&quot;) %>">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_24_ViTriQuangCaoRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_24_ViTriQuangCaoRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="ViTriLabel" Text="= &quot;Vị trí quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><custom:HTMLEditor ID="ViTri" runat="server" ViTriRequiredFieldValidator:Enabled="False" ViTriRequiredFieldValidator:Text="*" Height="350" Width="640" AutoFocus="False" /> </td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td><asp:TabContainer runat="server" id="TTrafficSafety_24_ViTriQuangCaoTabContainer">
 <asp:TabPanel runat="server" id="TTrafficSafety_26_QuangCaoTabPanel" HeaderText="Traffic Safety 26 Quang Cao">	<ContentTemplate>
  <CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl runat="server" id="TTrafficSafety_26_QuangCaoTableControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td><asp:panel id="TTrafficSafety_26_QuangCaoTableControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="pr"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%;"><tr><td><img src="../Images/paginationRowEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarDividerL.gif" alt="" /></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoAddButton" causesvalidation="False" commandname="AddRecord" imageurl="../Images/ButtonBarNew.gif" onmouseout="this.src='../Images/ButtonBarNew.gif'" onmouseover="this.src='../Images/ButtonBarNewOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoDeleteButton" causesvalidation="False" commandargument="DeleteOnUpdate" commandname="DeleteRecord" imageurl="../Images/ButtonBarDelete.gif" onmouseout="this.src='../Images/ButtonBarDelete.gif'" onmouseover="this.src='../Images/ButtonBarDeleteOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><img src="../Images/ButtonBarDividerR.gif" alt="" /></td><td class="prspace"><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td><td class="pra"><CMStTrafficSafety:PaginationMedium runat="server" id="TTrafficSafety_26_QuangCaoPagination"></CMStTrafficSafety:PaginationMedium>
<!--To change the position of the pagination control, please search for "prspace" on the Online Help for instruction. -->
                      </td><td><img src="../Images/paginationRowEdgeR.gif" alt="" /></td><td></td></tr></table>
</td></tr><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)"><tr class="tch"><th class="thcnb" colspan="3"><img src="../Images/space.gif" height="1" width="1" alt="" /></th><th class="thcwb" style="padding:0px;vertical-align:middle;"><asp:CheckBox runat="server" id="TTrafficSafety_26_QuangCaoToggleAll" onclick="toggleAllCheckboxes(this);">	</asp:CheckBox></th><th class="thc" scope="col"><asp:LinkButton runat="server" id="TenQuangCaoLabel" tooltip="Sort by TenQuangCao" Text="= &quot;Tên quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="KhachHangLabel" tooltip="Sort by KhachHang" Text="= &quot;Khách hàng quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="DuongDanAnhLabel" tooltip="Sort by DuongDanAnh" Text="= &quot;Ảnh quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="LinkLienKetLabel" tooltip="Sort by LinkLienKet" Text="= &quot;Địa chỉ website&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianBatDauLabel" tooltip="Sort by ThoiGianBatDau" Text="= &quot;Thời gian bắt đầu&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThoiGianKetThucLabel" tooltip="Sort by ThoiGianKetThuc" Text="= &quot;Thời gian kết thúc&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ThuTuLabel" tooltip="Sort by ThuTu" Text="= &quot;Thứ tự&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="HoatDongLabel" tooltip="Sort by HoatDong" Text="= &quot;Hoạt động&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th></tr><asp:Repeater runat="server" id="TTrafficSafety_26_QuangCaoTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow runat="server" id="TTrafficSafety_26_QuangCaoTableControlRow">
<tr><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowEditButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_edit.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:EditRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowDeleteButton" causesvalidation="False" commandargument="DeleteOnUpdate" commandname="DeleteRecord" cssclass="button_link" imageurl="../Images/icon_delete.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:DeleteRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticwb"><asp:CheckBox runat="server" id="TTrafficSafety_26_QuangCaoRecordRowSelection" onclick="moveToThisTableRow(this);">	</asp:CheckBox></td><td class="ttc" style=""><asp:TextBox runat="server" id="TenQuangCao" MaxLength="50" columns="60" cssclass="field_input" rows="5" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TenQuangCaoTextBoxMaxLengthValidator" ControlToValidate="TenQuangCao" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TenQuangCao&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td><td class="ttc" style="white-space:nowrap;"><asp:DropDownList runat="server" id="KhachHang" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="KhachHangFvLlsHyperLink" ControlToUpdate="KhachHang" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_25_KhachHangQuangCao" Field="TTrafficSafety_25_KhachHangQuangCao_.Id" DisplayField="%3dTTrafficSafety_25_KhachHangQuangCao.TenKhachHang"></Selectors:FvLlsHyperLink> 
<asp:ImageButton runat="server" id="KhachHangAddRecordLink" causesvalidation="False" commandname="Redirect" imageurl="../Images/iconNewFlat.gif" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton> </td><td class="ttc" style=""><asp:TextBox runat="server" id="DuongDanAnh" MaxLength="50" columns="60" cssclass="field_input" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="DuongDanAnhTextBoxMaxLengthValidator" ControlToValidate="DuongDanAnh" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;DuongDanAnh&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td><td class="ttc" style=""><asp:TextBox runat="server" id="LinkLienKet" MaxLength="50" columns="60" cssclass="field_input" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="LinkLienKetTextBoxMaxLengthValidator" ControlToValidate="LinkLienKet" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;LinkLienKet&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td><td class="ttc" style=""><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThoiGianBatDau" Columns="20" MaxLength="20" cssclass="field_input"></asp:TextBox></td>
<td style="padding-right: 5px; white-space:nowrap;">

</td>
<td>
<Selectors:CalendarExtendarClass runat="server" ID="ThoiGianBatDauCalendarExtender" TargetControlID="ThoiGianBatDau" CssClass="MyCalendar" Format="d">
</Selectors:CalendarExtendarClass>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThoiGianBatDauTextBoxMaxLengthValidator" ControlToValidate="ThoiGianBatDau" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThoiGianBatDau&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td><td class="ttc" style=""><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThoiGianKetThuc" Columns="20" MaxLength="20" cssclass="field_input"></asp:TextBox></td>
<td style="padding-right: 5px; white-space:nowrap;">

</td>
<td>
<Selectors:CalendarExtendarClass runat="server" ID="ThoiGianKetThucCalendarExtender" TargetControlID="ThoiGianKetThuc" CssClass="MyCalendar" Format="d">
</Selectors:CalendarExtendarClass>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThoiGianKetThucTextBoxMaxLengthValidator" ControlToValidate="ThoiGianKetThuc" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThoiGianKetThuc&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td><td class="ttc" style=""><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" onkeyup="adjustInteger(this, event.keyCode)" cssclass="field_input"></asp:TextBox></td>
<td style="padding-right: 5px; white-space:nowrap;">
<%# SystemUtils.GenerateIncrementDecrementButtons(true, Container.FindControl("ThuTu"),"NumberTextBox","","","") %>
</td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td><td class="ttc"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox> </td></tr></CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl>

 </ContentTemplate></asp:TabPanel>
</asp:TabContainer></td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                