<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_16_GopY.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_16_GopY" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_16_GopY" %>

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
<CMStTrafficSafety:TTrafficSafety_16_GopYRecordControl runat="server" id="TTrafficSafety_16_GopYRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_16_GopYTitle" Text="Sửa câu hỏi góp ý">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_16_GopYRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_16_GopYRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="HoTenLabel" Text="= &quot;Họ và tên&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="HoTen"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailLabel" Text="Email">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="Email"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiLabel" Text="= &quot;Địa chỉ&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DiaChi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TieuDeLabel" Text="= &quot;Tiêu đề&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="TieuDe" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="3" textmode="MultiLine" width="500px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NoiDungGopYLabel" Text="= &quot;Nội dung câu hỏi&quot;">	</asp:Literal></td><td class="dfv" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word;-webkit-hyphens: auto;   -moz-hyphens: auto;    -ms-hyphens: auto;        hyphens: auto; text-align:justify; white-space: normal !important;"><asp:Literal runat="server" id="NoiDungGopY"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianGopyLabel" Text="Thời gian nhận">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianGopy"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NoiDungTraLoiLabel" Text="Noi Dung Tra Loi">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="NoiDungTraLoi" MaxLength="50" columns="60" cssclass="field_input" generatevalidator="False" rows="6" textmode="MultiLine" width="500px"></asp:TextBox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianTraLoiLabel" Text="Thời gian trả lời">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianTraLoi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TinhTrangLabel" Text="Gủi cho độc giả">	</asp:Literal></td><td class="dfv"><asp:checkbox id="CheckBox" runat="server" text="(Tích vào ô này nếu bạn muốn gủi câu trả lời qua email cho độc giả.)"></asp:checkbox></td></tr><tr><td class="fls"><asp:Literal runat="server" id="XuatBanRaWebLabel" Text="= &quot;Xuất bản ra web&quot;">	</asp:Literal></td><td class="dfv"><asp:CheckBox runat="server" id="XuatBanRaWeb"></asp:CheckBox>(Tích vào ô này nếu bạn muốn câu hỏi và câu trả lời xuất bản ra web.)</td></tr></table></asp:panel>
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
	function hon_reply_image(iid)
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


</CMStTrafficSafety:TTrafficSafety_16_GopYRecordControl>

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
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-redirectargument="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                