<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AddTTrafficSafety_08_TinTuc.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AddTTrafficSafety_08_TinTuc" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.AddTTrafficSafety_08_TinTuc" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Assembly= "CKEditor.NET"Namespace="CKEditor.NET"TagPrefix="CKEditor"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
    <a id="StartOfPageContent"></a>
    
                <table cellpadding="0" cellspacing="0" border="0"><tr><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("CancelButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveButton"))%>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<CMStTrafficSafety:TTrafficSafety_08_TinTucRecordControl runat="server" id="TTrafficSafety_08_TinTucRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh">
<table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_08_TinTucTitle" Text="Thêm tin tức">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_08_TinTucRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_08_TinTucRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="ThuocDanhMucLabel" Text="= &quot;Thuộc danh mục&quot;">	</asp:Literal>
</td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:DropDownList runat="server" id="ThuocDanhMuc" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="410px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="ThuocDanhMucFvLlsHyperLink" ControlToUpdate="ThuocDanhMuc" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_07_DanhMucTinTuc" Field="TTrafficSafety_07_DanhMucTinTuc_.id" DisplayField="%3dTTrafficSafety_07_DanhMucTinTuc.TenDanhMuc"></Selectors:FvLlsHyperLink></td></tr><tr><td class="fls"><asp:Literal runat="server" id="AnhMinhHoaLabel" Text="= &quot;Ảnh minh họa&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;text-align:left;margin-left:10px;padding-left:10px;width:160px;"><asp:literal id="lit_image_demonstrade" runat="server" text="Text for literal goes here"></asp:literal></td><td class="dfv" style="white-space:nowrap;text-align:left;margin-left:10px;padding-left:10px;"><asp:TextBox runat="server" id="AnhMinhHoa" Columns="50" MaxLength="50" cssclass="field_input" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="AnhMinhHoaTextBoxMaxLengthValidator" ControlToValidate="AnhMinhHoa" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;AnhMinhHoa&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator>
<a href="#" id="btn_chon_anh" cssclass="button_link" onclick="chonanh()">Chọn ảnh</a>

<div id="bMulti" style='background-color:#fff;' class="bMulti">
    <iframe src="../SHARED_FILES/Select_Image.aspx" width="700px" height="350px" style='overflow:hidden;'></iframe>
    <br />
    <input type="button" onclick="ok_anh()" value="Ok" />
	 <input type="button" onclick="cancel_anh()" value="Hủy bỏ" />
    <br />
    </div></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TieuDeBaiVietLabel" Text="= &quot;Tiêu đề bài viết&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:TextBox runat="server" id="TieuDeBaiViet" MaxLength="50" columns="60" cssclass="field_input" rows="2" textmode="MultiLine" width="750px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TieuDeBaiVietTextBoxMaxLengthValidator" ControlToValidate="TieuDeBaiViet" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TieuDeBaiViet&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="LaTinTieuDiemLabel" Text="= &quot;Thuộc tin tiêu điểm&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:CheckBox runat="server" id="LaTinTieuDiem"></asp:CheckBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="MoTaNganLabel" Text="= &quot;Mô tả ngắn&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:TextBox runat="server" id="MoTaNgan" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" height="60px" richtexteditorheight="Default" richtexteditorwidth="Default" rows="3" textmode="MultiLine" width="750px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NoiDungLabel" Text="= &quot;Nội dung bài viết&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><CKEditor:CKEditorControl ID="NoiDung" runat="server" NoiDungRequiredFieldValidator:Enabled="False" NoiDungRequiredFieldValidator:Text="*" Visible="True" Height="350" Width="640" /></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TagsLabel" Text="Tags">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:TextBox runat="server" id="Tags" MaxLength="50" columns="60" cssclass="fuckoff" generatevalidator="False" height="120px" rows="3" textmode="MultiLine" width="720px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguonTinLabel" Text="= &quot;Nguồn tin&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;" colspan="2"><asp:TextBox runat="server" id="NguonTin" MaxLength="50" columns="60" cssclass="field_input" rows="1" textmode="SingleLine" width="250px"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="NguonTinTextBoxMaxLengthValidator" ControlToValidate="NguonTin" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;NguonTin&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv" colspan="2"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="field_input" width="30px"></asp:TextBox></td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="ThuTuTextBoxMaxLengthValidator" ControlToValidate="ThuTu" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;ThuTu&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
</td></tr><tr><td class="fls"><asp:Literal runat="server" id="HoatDongLabel" Text="= &quot;Hoạt động&quot;">	</asp:Literal></td><td class="dfv" colspan="2"><asp:CheckBox runat="server" id="HoatDong"></asp:CheckBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td><td class="dfv" colspan="2"><asp:Literal runat="server" id="NguoiTao"></asp:Literal>  
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>

<style>
.bMulti{background-color:#fff;border-radius:10px 10px 10px 10px;box-shadow:0 0 25px 5px #999;color:#111;display:none;min-width:50px;padding:25px}

.bMulti{min-height:50px;overflow:hidden;}

.bMulti p{font:500% 'Petrona',sans-serif;padding:45px 0 0;text-align:center}
.bMulti a{left:175px;position:absolute;top:175px}.
</style>
<script>



     var bppopup_show;
	function chonanh()
	{
	try {
            //alert('aaaaa');   
              jQuery.noConflict();
             // Triggering bPopup when click event is fired
             bppopup_show = jQuery('#bMulti').bPopup({
             modalClose: true,
             modal:true, 
             opacity: 0.2, positionStyle: 'fixed'
                
             });
         }
         catch (ex) {
             alert(ex);
         }
	return false;
	}		
function ok_anh()
{
try
{
   var sId = readCookie('anhduocchon');
    document.getElementById("<%= hdh_image_noinhan.ClientID %>").value = sId;
bppopup_show.close();
//btnDoPost_back
  document.getElementById("<%= btnDoPost_back_noinhan.ClientID %>").click();
//alert(sId);
 //__doPostBack("", "");
 }catch(ex)
 {alert(ex);}
}
function cancel_anh()
{
bppopup_show.close();
}
 function readCookie(name) {
           var i, c, ca, nameEQ = name + "=";
           ca = document.cookie.split(';');
           for (i = 0; i < ca.length; i++) {
               c = ca[i];
               while (c.charAt(0) == ' ') {
                   c = c.substring(1, c.length);
               }
               if (c.indexOf(nameEQ) == 0) {
                   return c.substring(nameEQ.length, c.length);
               }
           }
           return '';
       }
</script>
<script src="../App_Themes/jquery.bpopup.min.js"></script>
	
			
		
<link rel="stylesheet" href="../jQuerytagEditormaster/jquery.tag-editor.css">
	<script src="../jQuerytagEditormaster/jquery.tag-editor.min.js"></script>
<script>
$(window).keydown(function(event){
    if((event.which== 13) && ($(event.target)[0]!=$("textarea")[0])) {
      event.preventDefault();
      return false;
    }
  });
jQuery( document ).ready(function() {
try
{
  jQuery('.fuckoff').tagEditor();
  }
  catch(e)
  {
//  alert(e);
  }
  
  $('textarea').keypress(
    function(e){
        if (e.keyCode == 13) {
            this.focus();
        }
    });
  
});


</script>

</CMStTrafficSafety:TTrafficSafety_08_TinTucRecordControl>

<asp:hiddenfield id="hdh_has_value_noinhan" value="Hidden Field" runat="server"></asp:hiddenfield>
		<asp:hiddenfield id="hdh_OK_noinhan" value="Chọn" runat="server"></asp:hiddenfield>
<asp:hiddenfield id="hdh_cancel_noinhan" value="Hủy bỏ" runat="server"></asp:hiddenfield>
<asp:Button runat="server" OnClick="btnDoPost_back_noinhan_Click" id="btnDoPost_back_noinhan" causesvalidation="False" commandname="Redirect" consumers="page" cssclass="huyenhs_hiddne" AutoPostBack="True">		
	</asp:Button> 
	
<asp:hiddenfield id="hdh_image_noinhan" runat="server" value=""></asp:hiddenfield> 
<input type="hidden" id="Hidden" value="empty" /> 
<input type="hidden" id="Hidden1" value="empty" /> 
<asp:Button runat="server" id="PushButton" causesvalidation="False" commandname="Redirect" consumers="page" cssclass="huyenhs_hiddne" text="MyPushButton">		
	</asp:Button><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveAndNewButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    
    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                