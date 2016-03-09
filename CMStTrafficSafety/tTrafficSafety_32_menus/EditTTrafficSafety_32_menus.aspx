<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_32_menus.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_32_menus" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_32_menus" %>

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

                        <CMStTrafficSafety:TTrafficSafety_32_menusRecordControl runat="server" id="TTrafficSafety_32_menusRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_32_menusTitle" Text="Sửa menu">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_32_menusRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_32_menusRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="KieuMenuLabel" Text="= &quot;Kiểu Menu&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:dropdownlist EnableViewState="True" cssclass="Filter_Input" id="KieuMenu" runat="server" autopostback="True" onchange="javascript:__doPostBack('','')" />
<asp:AsyncPostBackTrigger ControlID="KieuMenu" EventName="KieuMenu_SelectedIndexChanged" /></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DanhMucIDLabel" Text="Danh Muc">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:dropdownlist cssclass="Filter_Input" id="ddl_danhmuc_id" runat="server" /></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TenMenuLabel" Text="= &quot;Tên menu&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:TextBox runat="server" id="TenMenu" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="1" textmode="SingleLine" width="500px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="LienKetLabel" Text="= &quot;Liên kết&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:TextBox runat="server" id="LienKet" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="1" textmode="SingleLine" width="500px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TargetsLabel" Text="= &quot;Target Window&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:TextBox runat="server" id="Targets" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" height="350" rows="1" textmode="SingleLine" width="640"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="field_input" width="50px"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> 
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
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                