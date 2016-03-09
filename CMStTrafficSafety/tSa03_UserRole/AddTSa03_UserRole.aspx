<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.AddTSa03_UserRole" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AddTSa03_UserRole.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AddTSa03_UserRole" %>
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

                        <CMStTrafficSafety:TSa03_UserRoleRecordControl runat="server" id="TSa03_UserRoleRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TSa03_UserRoleTitle" Text="Thêm mới người dùng-quyền">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TSa03_UserRoleRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TSa03_UserRoleRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0" style="width:20px;"><tr><td class="fls" style="width:130px"><asp:Literal runat="server" id="UserIDLabel" Text="= &quot;Người dùng&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="3"><asp:DropDownList runat="server" id="UserId0" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="257px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="UserId0FvLlsHyperLink" ControlToUpdate="UserId0" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tSa01_User" Field="TSa01_User_.ID" DisplayField="%3d+TSa01_User.UserName0" Formula="%3dTSa01_User.UserName0"></Selectors:FvLlsHyperLink>&nbsp;
<asp:RequiredFieldValidator runat="server" id="UserId0RequiredFieldValidator" ControlToValidate="UserId0" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueIsRequired&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;UserId0&quot;) %>" enabled="True" initialvalue="--PLEASE_SELECT--" text="*"></asp:RequiredFieldValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="RoleIDLabel" Text="Role">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:ListBox runat="server" id="RoleID" cssclass="field_input" height="200px" selectionmode="Multiple" width="257px"></asp:ListBox></td><td class="dfv" style="white-space:nowrap;text-align:center;white-space:nowrap;width:20px;"><asp:Button runat="server" id="PushButton" causesvalidation="False" commandname="Redirect" consumers="page" postback="True" text=">>">		
	</asp:Button>
<br />
<asp:Button runat="server" id="PushButton1" causesvalidation="False" commandname="Redirect" consumers="page" postback="True" text=">">		
	</asp:Button>
<br />
<asp:Button runat="server" id="PushButton2" causesvalidation="False" commandname="Redirect" consumers="page" postback="True" text="&lt;">		
	</asp:Button>
<br />
<asp:Button runat="server" id="PushButton3" causesvalidation="False" commandname="Redirect" consumers="page" postback="True" text="&lt;&lt;">		
	</asp:Button></td><td class="dfv" style="white-space:nowrap;"><asp:listbox cssclass="field_input" id="ListBox" selectionmode="multiple" runat="server" width="257px" height="200px" /></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="3"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="GhiChuLabel" Text="= &quot;Ghi chú&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="3"><asp:TextBox runat="server" id="GhiChu" MaxLength="50" columns="60" cssclass="field_input" rows="3" textmode="MultiLine" width="500px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="GhiChuTextBoxMaxLengthValidator" ControlToValidate="GhiChu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;GhiChu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> 
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TSa03_UserRoleRecordControl>

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
                