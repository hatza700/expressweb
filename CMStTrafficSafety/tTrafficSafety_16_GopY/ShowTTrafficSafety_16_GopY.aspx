<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_16_GopY.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_16_GopY" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_16_GopY" %>

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

                        <CMStTrafficSafety:TTrafficSafety_16_GopYRecordControl runat="server" id="TTrafficSafety_16_GopYRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_16_GopYTitle" Text="Chi tiết câu hỏi của độc giả">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_16_GopYRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_16_GopYRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="HoTenLabel" Text="= &quot;Họ và tên&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="HoTen"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="EmailLabel" Text="Email">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="Email"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="DiaChiLabel" Text="= &quot;Địa chỉ&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="DiaChi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TieuDeLabel" Text="= &quot;Tiêu đề&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TieuDe"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NoiDungGopYLabel" Text="= &quot;Nội dung câu hỏi&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NoiDungGopY"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianGopyLabel" Text="Thoi Gian Gopy">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianGopy"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NoiDungTraLoiLabel" Text="Noi Dung Tra Loi">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NoiDungTraLoi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThoiGianTraLoiLabel" Text="Thoi Gian Tra Loi">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="ThoiGianTraLoi"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TinhTrangLabel" Text="= &quot;Tình trạng góp ý&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="TinhTrang" causesvalidation="False" commandname="Redirect"></asp:LinkButton></td></tr><tr><td class="fls"><asp:Literal runat="server" id="XuatBanRaWebLabel" Text="= &quot;Xuất bản ra web&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="XuatBanRaWeb"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_16_GopYRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="OKButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:OK&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="EditButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Edit&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                