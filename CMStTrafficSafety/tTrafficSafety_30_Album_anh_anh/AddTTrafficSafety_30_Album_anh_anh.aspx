<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AddTTrafficSafety_30_Album_anh_anh.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AddTTrafficSafety_30_Album_anh_anh" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.AddTTrafficSafety_30_Album_anh_anh" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

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

<CMStTrafficSafety:TTrafficSafety_30_Album_anh_anhRecordControl runat="server" id="TTrafficSafety_30_Album_anh_anhRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_30_Album_anh_anhTitle" Text="Thêm ảnh vào album">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_30_Album_anh_anhRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_30_Album_anh_anhRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="ThuocAlbumLabel" Text="= &quot;Thuộc album&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:DropDownList runat="server" id="ThuocAlbum" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="500px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="ThuocAlbumFvLlsHyperLink" ControlToUpdate="ThuocAlbum" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" Table="tTrafficSafety_29_Album_anh" Field="TTrafficSafety_29_Album_anh_.albumid" DisplayField="%3d+TTrafficSafety_29_Album_anh.TenAlbum" Formula="%3dTTrafficSafety_29_Album_anh.TenAlbum"></Selectors:FvLlsHyperLink></td><td class="dfv"></td></tr><tr><td class="fls"><asp:literal id="Literal2" runat="server" text="Chọn thư mục chứa ảnh"></asp:literal></td><td class="dfv" colspan="3"><asp:dropdownlist EnableViewState="True" cssclass="Filter_Input" id="ddl_thumuc_hethong" runat="server" width="250px" autopostback="True" />
<asp:AsyncPostBackTrigger ControlID="ddl_thumuc_hethong" EventName="ddl_thumuc_hethong_SelectedIndexChanged" /></td><td class="dfv"></td></tr><tr><td class="fls"></td><td><asp:literal id="Literal" runat="server" text="Danh sách các ảnh nằm trong thư mục"></asp:literal></td><td class="fls" style="width:50px !important;"></td><td class="dfv"><asp:literal id="Literal1" runat="server" text="Các ảnh sẽ được thêm vào album"></asp:literal></td><td class="dfv" style="width:auto;">&nbsp;</td></tr><tr><td class="fls"></td><td style="width:200px !important;"><%@ Register src="CListControl.ascx" tagname="CListControl" tagprefix="uc1" %>
<uc1:CListControl ID="MyListControl1" runat="server" Width="180px" cssclas="spec" height="250px" /></td><td class="fls" style="width:50px !important;height:150px"><asp:button id="ButtonAdd" runat="server" text=">" cssclass="button_link" width="50px" onclick="ButtonAdd_Click"></asp:button><br> 
<asp:button id="ButtonRemove" runat="server" text="<" cssclass="button_link" width="50px" onclick="ButtonReMove_Click"></asp:button> <br> 
<asp:button id="ButtonAddAll" runat="server" text=">>>" cssclass="button_link" width="50px" onclick="ButtonAddAll_Click"></asp:button> <br>  
<asp:button id="ButtonRemoveAll" runat="server" text="<<<" cssclass="button_link" width="50px" onclick="ButtonReMoveAll_Click"></asp:button><br></td><td class="dfv" style="width:250px;"><uc1:CListControl ID="ListBox2" runat="server" Width="180px" cssclas="spec" height="250px" /></td><td class="dfv" style="width:250px;"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="field_input" width="50px"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox></td><td class="dfv"></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv" colspan="3"><asp:Literal runat="server" id="NguoiTao"></asp:Literal>  
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td><td class="dfv"></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>


<script>


function postbackthumuc(ddlFruits)
{
 var selectedText = ddlFruits.options[ddlFruits.selectedIndex].innerHTML;
        var selectedValue = ddlFruits.value;


try
{
jQuery.noConflict();
 document.getElementById("<%= hdh_old_rename_image.ClientID %>").value=selectedValue;

//__doPostBack('', '');



 }
 catch(ex)
 {
alert(ex);
 }

}
</script>

	
			
		
<link rel="stylesheet" href="../jQuerytagEditormaster/jquery.tag-editor.css">
	<script src="../jQuerytagEditormaster/jquery.tag-editor.min.js"></script>
</CMStTrafficSafety:TTrafficSafety_30_Album_anh_anhRecordControl>

<asp:Button runat="server" OnClick="btnDoPost_back_noinhan_Click" id="btnDoPost_back_noinhan" causesvalidation="False" commandname="Redirect" consumers="page" cssclass="huyenhs_hiddne" AutoPostBack="True">		
	</asp:Button>
<asp:HiddenField ID="hdh_old_rename_image" runat="server" /><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveAndNewButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                