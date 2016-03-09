<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_25_KhachHangQuangCaoMobile" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMobile" Src="../Shared/PaginationMobile.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_25_KhachHangQuangCaoMobile.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/Mobile.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_25_KhachHangQuangCaoMobile" %>
<%@ Register Tagprefix="BaseClasses" Namespace="BaseClasses.Web.UI.WebControls" Assembly="BaseClasses" %><asp:Content id="PageSection" ContentPlaceHolderID="PageContent" Runat="server">
    <a id="StartOfPageContent"></a>
    
                <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("CancelButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("SaveButton"))%>

                        <CMStTrafficSafety:TTrafficSafety_25_KhachHangQuangCaoRecordControl runat="server" id="TTrafficSafety_25_KhachHangQuangCaoRecordControl">	<table class="" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%" class="mobileHeader"><tr><td class="mobileHeaderLeft">
                            <asp:ImageButton runat="server" id="CancelButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/MobileButtonBack.png" text="&lt;%# GetResourceValue(&quot;Btn:Back&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Back&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton>
                          </td><td class="mobileHeaderTitle">
                      <asp:Literal runat="server" id="TTrafficSafety_25_KhachHangQuangCaoTitle" Text="&lt;%#String.Concat(&quot;&lt;span class='mobileFontAdjust70'>&quot;, &quot; Traffic Safety 25 Khach Hang Quang Cao&quot;, &quot;&lt;/span>&quot;) %>">	</asp:Literal>
                    </td><td class="mobileHeaderOptions">
                            <asp:ImageButton runat="server" id="DeleteButton" causesvalidation="True" commandname="DeleteRecord" imageurl="../Images/MobileButtonDelete.png" text="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton>
                          </td><td class="mobileHeaderRight">
                            <asp:ImageButton runat="server" id="EditButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/MobileButtonEdit.png" text="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton>
                          </td></tr></table>

                      </td></tr><tr><td>
                      <asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlCollapsibleRegion" runat="server"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileBody"><asp:panel id="TTrafficSafety_25_KhachHangQuangCaoRecordControlPanel" runat="server"><table class="mobileRecordPanel mobileBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="EmailLabel" Text="= &quot;Email KH/CTY&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="Email"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="EmailNguoiDaiDienLabel" Text="= &quot;Email người đại diện&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="EmailNguoiDaiDien"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThoiGianTaoLabel" Text="= &quot;Thời gian tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="ThoiGianTao"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="IpTaoLabel" Text="= &quot;Ip tạo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="IpTao"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="ThoiGianSuaLabel" Text="= &quot;Thời gian sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="ThoiGianSua"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="IpSuaLabel" Text="= &quot;Ip sửa&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="IpSua"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="TenKhachHangLabel" Text="= &quot;Tên khách hàng/công ty quảng cáo&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="TenKhachHang"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="DiaChiLabel" Text="= &quot;Địa chỉ KH/CTY&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="DiaChi"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="SoDienThoaiLabel" Text="= &quot;Số điện thoại KH/CTY&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="SoDienThoai"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="NguoiDaiDienLabel" Text="= &quot;Người đại diện cho KH/CTY&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="NguoiDaiDien"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="SDTNguoiDaiDienLabel" Text="= &quot;Số điện thoại người đại diện KH/CTY&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom"><asp:Literal runat="server" id="SDTNguoiDaiDien"></asp:Literal> </td></tr><tr><td class="mobileFieldLabelOnTop"><asp:Literal runat="server" id="DiaChiNguoiDaiDienLabel" Text="= &quot;Địa chỉ người đại diện&quot;">	</asp:Literal></td></tr><tr><td class="mobileFieldValueOnBottom" style="padding-bottom: 22px;"><asp:Literal runat="server" id="DiaChiNguoiDaiDien"></asp:Literal> </td></tr></table></asp:panel>
</td></tr></table>
</asp:panel>
                      </td></tr></table>
</CMStTrafficSafety:TTrafficSafety_25_KhachHangQuangCaoRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td><asp:accordion id="TTrafficSafety_25_KhachHangQuangCaoAccordion" runat="server" requireopenedpane="false" suppressheaderpostbacks="true" selectedindex="-1">
      <panes>
          <asp:accordionpane id="TTrafficSafety_26_QuangCaoAccordionPane" runat="server">
              <header><table border="0" cellpadding="0" cellspacing="0" style="width: 100%;"><tr><td class="mobileAccordionHeader"><span class="mobileAccordionHeaderTitle">&nbsp;&nbsp;Traffic Safety 26 Quang Cao</span></td></tr></table></header>
              <content><CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl runat="server" id="TTrafficSafety_26_QuangCaoTableControl">	<table class="" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td width="100%">
                        <CMStTrafficSafety:PaginationMobile runat="server" id="TTrafficSafety_26_QuangCaoPagination"></CMStTrafficSafety:PaginationMobile>
                      </td></tr><tr><td>
                      <asp:panel id="TTrafficSafety_26_QuangCaoTableControlCollapsibleRegion" runat="server"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="mobileBodyNoPadding"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)" width="100%"><tr><th class="mobileTableCell" colspan="1" style="display:none"><!-- Note: Cell Is Hidden --></th><th class="mobileTableCell" scope="col" style="display:none"><!-- Note: Cell Is Hidden --></th><th class="mobileTableCell" scope="col" style="display:none"><!-- Note: Cell Is Hidden --></th></tr><asp:Repeater runat="server" id="TTrafficSafety_26_QuangCaoTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow runat="server" id="TTrafficSafety_26_QuangCaoTableControlRow">
<tr onclick="RedirectByViewButton(event)"><td class="mobileTableCell" style="display:none;"><!-- Note: Cell Is Hidden --><asp:ImageButton runat="server" id="TTrafficSafety_26_QuangCaoRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="mobileTableCell">
                  &nbsp;
                </td><td class="mobileTableCell"><asp:Label runat="server" id="TenQuangCao" cssclass="mobileTableCellTitle"></asp:Label> 
                            <br />
                          <asp:Literal runat="server" id="ViTri"></asp:Literal> 
                            <br />
                          <asp:Literal runat="server" id="DuongDanAnh"></asp:Literal> 
                            <br />
                          </td></tr></CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel>
                      </td></tr></table>
</CMStTrafficSafety:TTrafficSafety_26_QuangCaoTableControl>
</content>
          </asp:accordionpane>
      </panes>
</asp:accordion></td></tr><tr><td><br /></td></tr></table>
    
    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                