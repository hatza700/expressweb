<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_08_TinTucMobile.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/Mobile.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_08_TinTucMobile" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_08_TinTucMobile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
    <a id="StartOfPageContent"></a>
    
                <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("CancelButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveButton"))%>

                        <CMStTrafficSafety:TTrafficSafety_08_TinTucRecordControl runat="server" id="TTrafficSafety_08_TinTucRecordControl">	<table class="" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%" class="mobileHeader"><tr><td class="mobileHeaderLeft">
                            <asp:ImageButton runat="server" id="CancelButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/MobileButtonBack.png" text="&lt;%# GetResourceValue(&quot;Btn:Back&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Back&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton>
                          </td><td class="mobileHeaderTitle">
                      <asp:Literal runat="server" id="TTrafficSafety_08_TinTucTitle" Text="&lt;%#String.Concat(&quot;&lt;span class='mobileFontAdjust80'>&quot;, GetResourceValue(&quot;Title:Edit&quot;),&quot;  Traffic Safety 08 Tin Tuc&quot;, &quot;&lt;/span>&quot;) %>">	</asp:Literal>
                    </td><td class="mobileHeaderOptions"></td><td class="mobileHeaderRight">
                            <asp:ImageButton runat="server" id="SaveButton" causesvalidation="True" commandname="UpdateData" imageurl="../Images/MobileButtonSave.png" text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton>
                          </td></tr></table>

                      </td></tr><tr><td>
                      <asp:panel id="TTrafficSafety_08_TinTucRecordControlCollapsibleRegion" runat="server"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileBody"><asp:panel id="TTrafficSafety_08_TinTucRecordControlPanel" runat="server"><table class="mobileRecordPanel mobileBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThuocDanhMucLabel" Text="= &quot;Thuộc danh mục&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:DropDownList runat="server" id="ThuocDanhMuc" cssclass="mobileFilterInput" onkeypress="dropDownListTypeAhead(this,false)"></asp:DropDownList>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="LaTinTieuDiemLabel" Text="= &quot;Thuộc tin tiêu điểm&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:CheckBox runat="server" id="LaTinTieuDiem" cssclass="mobileCheckbox"></asp:CheckBox> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="AnhMinhHoaLabel" Text="= &quot;Ảnh minh họa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="AnhMinhHoa" Columns="20" MaxLength="50" cssclass="mobileFieldInput"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="AnhMinhHoaTextBoxMaxLengthValidator" ControlToValidate="AnhMinhHoa" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;AnhMinhHoa&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="mobileFieldInput"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="NguoiTao" Columns="14" MaxLength="14" cssclass="mobileFieldInput"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NguoiTaoTextBoxMaxLengthValidator" ControlToValidate="NguoiTao" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NguoiTao&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThoiGianTaoLabel" Text="= &quot;Thời gian tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThoiGianTao" Columns="20" MaxLength="20" cssclass="mobileFieldInput"></asp:TextBox></td>
<td style="padding-right: 5px">
<asp:ImageButton runat="server" ID="ThoiGianTaoPopupButton" ImageUrl="../Images/MobileCalendar.png" CausesValidation="false">
</asp:ImageButton><Selectors:CalendarExtendarClass runat="server" ID="ThoiGianTaoCalendarExtender" TargetControlID="ThoiGianTao" CssClass="MyCalendarMobile" OnClientShown="mobileCalendarShown" PopupPosition="BottomLeft" PopupButtonID="ThoiGianTaoPopupButton" Format="d">
</Selectors:CalendarExtendarClass>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThoiGianTaoTextBoxMaxLengthValidator" ControlToValidate="ThoiGianTao" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThoiGianTao&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="IpTaoLabel" Text="= &quot;Ip tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="IpTao" MaxLength="30" columns="20" cssclass="mobileFieldInput" rows="2" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="IpTaoTextBoxMaxLengthValidator" ControlToValidate="IpTao" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;IpTao&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="NguoiSua" Columns="14" MaxLength="14" cssclass="mobileFieldInput"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NguoiSuaTextBoxMaxLengthValidator" ControlToValidate="NguoiSua" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NguoiSua&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThoiGianSuaLabel" Text="= &quot;Thời gian sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThoiGianSua" Columns="20" MaxLength="20" cssclass="mobileFieldInput"></asp:TextBox></td>
<td style="padding-right: 5px">
<asp:ImageButton runat="server" ID="ThoiGianSuaPopupButton" ImageUrl="../Images/MobileCalendar.png" CausesValidation="false">
</asp:ImageButton><Selectors:CalendarExtendarClass runat="server" ID="ThoiGianSuaCalendarExtender" TargetControlID="ThoiGianSua" CssClass="MyCalendarMobile" OnClientShown="mobileCalendarShown" PopupPosition="BottomLeft" PopupButtonID="ThoiGianSuaPopupButton" Format="d">
</Selectors:CalendarExtendarClass>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThoiGianSuaTextBoxMaxLengthValidator" ControlToValidate="ThoiGianSua" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThoiGianSua&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="IpSuaLabel" Text="= &quot;Ip sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="IpSua" MaxLength="30" columns="20" cssclass="mobileFieldInput" rows="2" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="IpSuaTextBoxMaxLengthValidator" ControlToValidate="IpSua" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;IpSua&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="LuotXemLabel" Text="= &quot;Lượt xem&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="LuotXem" Columns="14" MaxLength="14" cssclass="mobileFieldInput"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="LuotXemTextBoxMaxLengthValidator" ControlToValidate="LuotXem" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;LuotXem&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="TagsLabel" Text="Tags">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="Tags" MaxLength="50" columns="20" cssclass="mobileFieldInput" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TagsTextBoxMaxLengthValidator" ControlToValidate="Tags" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;Tags&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="TieuDeBaiVietLabel" Text="= &quot;Tiêu đề bài viết&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="TieuDeBaiViet" MaxLength="50" columns="20" cssclass="mobileFieldInput" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TieuDeBaiVietTextBoxMaxLengthValidator" ControlToValidate="TieuDeBaiViet" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TieuDeBaiViet&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="MoTaNganLabel" Text="= &quot;Mô tả ngắn&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="MoTaNgan" MaxLength="50" columns="20" cssclass="mobileFieldInput" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="MoTaNganTextBoxMaxLengthValidator" ControlToValidate="MoTaNgan" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;MoTaNgan&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NoiDungLabel" Text="= &quot;Nội dung bài viết&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:TextBox runat="server" id="NoiDung" MaxLength="50" columns="20" cssclass="mobileFieldInput" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NoiDungTextBoxMaxLengthValidator" ControlToValidate="NoiDung" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NoiDung&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguonTinLabel" Text="= &quot;Nguồn tin&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom" style="padding-bottom: 22px;"><asp:TextBox runat="server" id="NguonTin" MaxLength="50" columns="20" cssclass="mobileFieldInput" rows="6" textmode="MultiLine"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NguonTinTextBoxMaxLengthValidator" ControlToValidate="NguonTin" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NguonTin&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr></table></asp:panel>
</td></tr></table>
</asp:panel>
                      </td></tr></table>
</CMStTrafficSafety:TTrafficSafety_08_TinTucRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr></table>
    
    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                