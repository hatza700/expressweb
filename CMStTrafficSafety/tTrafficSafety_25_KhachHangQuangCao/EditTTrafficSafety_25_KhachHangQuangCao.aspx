<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_25_KhachHangQuangCao" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_25_KhachHangQuangCao.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_25_KhachHangQuangCao" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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

                        <CMStTrafficSafety:TTrafficSafety_25_KhachHangQuangCaoRecordControl runat="server" id="TTrafficSafety_25_KhachHangQuangCaoRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_25_KhachHangQuangCaoTitle" Text="Sửa khách hàng quảng cáo">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="TenKhachHangLabel" Text="= &quot;Tên khách hàng/công ty quảng cáo&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="TenKhachHang" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="500px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TenKhachHangTextBoxMaxLengthValidator" ControlToValidate="TenKhachHang" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TenKhachHang&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiLabel" Text="= &quot;Địa chỉ KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="DiaChi" MaxLength="50" columns="60" cssclass="field_input" rows="2" textmode="MultiLine" width="500px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="DiaChiTextBoxMaxLengthValidator" ControlToValidate="DiaChi" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;DiaChi&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailLabel" Text="= &quot;Email KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="Email" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="EmailTextBoxMaxLengthValidator" ControlToValidate="Email" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;Email&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SoDienThoaiLabel" Text="= &quot;Số điện thoại KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="SoDienThoai" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="SoDienThoaiTextBoxMaxLengthValidator" ControlToValidate="SoDienThoai" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;SoDienThoai&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiDaiDienLabel" Text="= &quot;Người đại diện cho KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="NguoiDaiDien" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NguoiDaiDienTextBoxMaxLengthValidator" ControlToValidate="NguoiDaiDien" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NguoiDaiDien&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiNguoiDaiDienLabel" Text="= &quot;Địa chỉ người đại diện&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="DiaChiNguoiDaiDien" MaxLength="50" columns="60" cssclass="field_input" rows="2" textmode="MultiLine" width="500px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="DiaChiNguoiDaiDienTextBoxMaxLengthValidator" ControlToValidate="DiaChiNguoiDaiDien" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;DiaChiNguoiDaiDien&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailNguoiDaiDienLabel" Text="= &quot;Email người đại diện&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="EmailNguoiDaiDien" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="EmailNguoiDaiDienTextBoxMaxLengthValidator" ControlToValidate="EmailNguoiDaiDien" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;EmailNguoiDaiDien&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SDTNguoiDaiDienLabel" Text="= &quot;Số điện thoại người đại diện KH/CTY&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="SDTNguoiDaiDien" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="SDTNguoiDaiDienTextBoxMaxLengthValidator" ControlToValidate="SDTNguoiDaiDien" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;SDTNguoiDaiDien&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> 
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
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                