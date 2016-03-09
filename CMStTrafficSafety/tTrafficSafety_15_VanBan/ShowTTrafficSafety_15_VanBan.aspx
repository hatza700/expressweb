<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_15_VanBan.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_15_VanBan" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_15_VanBan" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

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

                        <CMStTrafficSafety:TTrafficSafety_15_VanBanRecordControl runat="server" id="TTrafficSafety_15_VanBanRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_15_VanBanTitle" Text="Xem chi tiết văn bản quy phạm pháp luật">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_15_VanBanRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_15_VanBanRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="MaHinhThucVanbanLabel" Text="= &quot;Mã hình thức văn bản&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="MaHinhThucVanban" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="MaLinhVucLabel" Text="= &quot;Thuộc lĩnh vực&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="MaLinhVuc" causesvalidation="False" commandname="Redirect"></asp:LinkButton> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="MaChuyenNganhLabel" Text="= &quot;Thuộc chuyên nghành&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="MaChuyenNganh" causesvalidation="False" commandname="Redirect"></asp:LinkButton></td></tr><tr><td class="fls"><asp:Literal runat="server" id="MaCQBHLabel" Text="= &quot;Thuộc cơ quan ban hành&quot;">	</asp:Literal></td><td class="dfv"><asp:LinkButton runat="server" id="MaCQBH" causesvalidation="False" commandname="Redirect"></asp:LinkButton></td></tr><tr><td class="fls"><asp:Literal runat="server" id="SoHieuVBLabel" Text="= &quot;Số hiệu Văn bản&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="SoHieuVB"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="NgayBanHanhLabel" Text="= &quot;Ngày ban hành&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NgayBanHanh"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TrichYeuLabel" Text="= &quot;Trích yếu&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TrichYeu"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TepDinhKemLabel" Text="= &quot;Tệp tin đính kèm&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TepDinhKem"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="GhiChuLabel" Text="= &quot;Ghi chú&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="GhiChu"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="TinhTrangLabel" Text="= &quot;Tình trạng văn bản&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="TinhTrang"></asp:Literal> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiTaoLabel" Text="= &quot;Người tạo&quot;">	</asp:Literal> 
</td><td class="dfv"><asp:Literal runat="server" id="NguoiTao"></asp:Literal> 
<asp:Literal runat="server" id="IpTao"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianTao"></asp:Literal></td></tr><tr><td class="fls"><asp:Literal runat="server" id="NguoiSuaLabel" Text="= &quot;Người sửa&quot;">	</asp:Literal></td><td class="dfv"><asp:Literal runat="server" id="NguoiSua"></asp:Literal> 
<asp:Literal runat="server" id="IpSua"></asp:Literal> 
<asp:Literal runat="server" id="ThoiGianSua"></asp:Literal></td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_15_VanBanRecordControl>

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
                