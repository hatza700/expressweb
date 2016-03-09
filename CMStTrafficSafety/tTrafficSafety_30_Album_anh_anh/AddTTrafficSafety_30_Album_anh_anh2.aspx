<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AddTTrafficSafety_30_Album_anh_anh2.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AddTTrafficSafety_30_Album_anh_anh2" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.AddTTrafficSafety_30_Album_anh_anh2" %>

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
</td></tr><tr><td><asp:panel id="TTrafficSafety_30_Album_anh_anhRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_30_Album_anh_anhRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="ThuocAlbumLabel" Text="= &quot;Thuộc album&quot;">	</asp:Literal></td><td class="dfv" colspan="2"><asp:DropDownList runat="server" id="ThuocAlbum" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)" width="500px"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="ThuocAlbumFvLlsHyperLink" ControlToUpdate="ThuocAlbum" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_29_Album_anh" Field="TTrafficSafety_29_Album_anh_.albumid" DisplayField="%3d+TTrafficSafety_29_Album_anh.TenAlbum"></Selectors:FvLlsHyperLink></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DuongDanAnhLabel" Text="= &quot;Đường dẫn ảnh&quot;">	</asp:Literal></td><td class="dfv" style="width:1px"><asp:literal id="lit_image_demonstrade" runat="server" text="Text for literal goes here"></asp:literal></td><td class="fls" style="margin-top:65px; width:1px;float:left;vertical-align:middle !important"><asp:TextBox runat="server" id="DuongDanAnh" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="1" textmode="SingleLine" width="300px"></asp:TextBox>

<a href="#" id="btn_chon_anh" cssclass="button_link" onclick="chonanh()">Chọn ảnh</a>

<div id="bMulti" style='background-color:#fff;' class="bMulti">
    <iframe src="../SHARED_FILES/Select_Image.aspx" width="700px" height="350px" style='overflow:hidden;'></iframe>
    <br />
    <input type="button" onclick="ok_anh()" value="Ok" />
	 <input type="button" onclick="cancel_anh()" value="Hủy bỏ" />
    <br />
    </div></td></tr><tr><td class="fls"><asp:Literal runat="server" id="GhiChuLabel" Text="Ghi Chu">	</asp:Literal></td><td class="dfv" colspan="2"><asp:TextBox runat="server" id="GhiChu" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="3" textmode="MultiLine" width="500px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThuTuLabel" Text="= &quot;Thứ tự&quot;">	</asp:Literal></td><td class="dfv" colspan="2"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="ThuTu" Columns="14" MaxLength="14" cssclass="field_input" width="50px"></asp:TextBox></td>
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

</CMStTrafficSafety:TTrafficSafety_30_Album_anh_anhRecordControl>

<asp:hiddenfield id="hdh_has_value_noinhan" value="Hidden Field" runat="server"></asp:hiddenfield>
		<asp:hiddenfield id="hdh_OK_noinhan" value="Chọn" runat="server"></asp:hiddenfield>
<asp:hiddenfield id="hdh_cancel_noinhan" value="Hủy bỏ" runat="server"></asp:hiddenfield>
<asp:Button runat="server" OnClick="btnDoPost_back_noinhan_Click" id="btnDoPost_back_noinhan" causesvalidation="False" commandname="Redirect" consumers="page" cssclass="huyenhs_hiddne" AutoPostBack="True">		
	</asp:Button> 
	
<asp:hiddenfield id="hdh_image_noinhan" runat="server" value=""></asp:hiddenfield> 
<input type="hidden" id="Hidden" value="empty" /> 
<input type="hidden" id="Hidden1" value="empty" /> 
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveAndNewButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SaveNNew&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                