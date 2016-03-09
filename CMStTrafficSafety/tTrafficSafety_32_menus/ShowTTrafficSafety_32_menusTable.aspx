<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_32_menusTable.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_32_menusTable" %>
<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMedium" Src="../Shared/PaginationMedium.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_32_menusTable" %>

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

                <table cellpadding="0" cellspacing="0" border="0"><tr><td>
                        <CMStTrafficSafety:TTrafficSafety_32_menusTableControl runat="server" id="TTrafficSafety_32_menusTableControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_32_menusTitle" Text="Danh sách menu">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_32_menusTableControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fila" style="width:150px"><%# GetResourceValue("Txt:SearchFor", "CMStTrafficSafety") %></td><td style="width:150px;"><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("TTrafficSafety_32_menusSearchButton"))%>
<asp:TextBox runat="server" id="TTrafficSafety_32_menusSearch" columns="50" cssclass="Search_Input">	</asp:TextBox>
<asp:AutoCompleteExtender id="TTrafficSafety_32_menusSearchAutoCompleteExtender" runat="server" TargetControlID="TTrafficSafety_32_menusSearch" ServiceMethod="GetAutoCompletionList_TTrafficSafety_32_menusSearch" MinimumPrefixLength="2" CompletionInterval="700" CompletionSetCount="10" CompletionListCssClass="autotypeahead_completionListElement" CompletionListItemCssClass="autotypeahead_listItem " CompletionListHighlightedItemCssClass="autotypeahead_highlightedListItem">
</asp:AutoCompleteExtender>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("TTrafficSafety_32_menusSearchButton"))%>
</td><td class="filbc" style="width:1px;"><CMStTrafficSafety:ThemeButton runat="server" id="TTrafficSafety_32_menusSearchButton" button-causesvalidation="False" button-commandname="Search" button-text="&lt;%# GetResourceValue(&quot;Btn:SearchGoButtonText&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SearchGoButtonText&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td><td class="filbc" style="width:auto">&nbsp;</td></tr><tr><td class="fila"><asp:Literal runat="server" id="KieuMenuLabel1" Text="= &quot;Kiểu Menu&quot;">	</asp:Literal></td><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("TTrafficSafety_32_menusFilterButton"))%>
<asp:DropDownList runat="server" id="KieuMenuFilter" autopostback="True" cssclass="Filter_Input" onkeypress="dropDownListTypeAhead(this,false)">	</asp:DropDownList><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("TTrafficSafety_32_menusFilterButton"))%>
</td><td></td><td></td></tr></table>
</td></tr><tr><td class="pr"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%;"><tr><td><img src="../Images/paginationRowEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarDividerL.gif" alt="" /></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusNewButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/ButtonBarNew.gif" onmouseout="this.src='../Images/ButtonBarNew.gif'" onmouseover="this.src='../Images/ButtonBarNewOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusDeleteButton" causesvalidation="False" commandname="DeleteRecord" imageurl="../Images/ButtonBarDelete.gif" onmouseout="this.src='../Images/ButtonBarDelete.gif'" onmouseover="this.src='../Images/ButtonBarDeleteOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusExportExcelButton" causesvalidation="False" commandname="ExportDataExcel" imageurl="../Images/ButtonBarExcelExport.gif" onmouseout="this.src='../Images/ButtonBarExcelExport.gif'" onmouseover="this.src='../Images/ButtonBarExcelExportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:ExportExcel&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusImportButton" causesvalidation="False" commandname="ImportCSV" imageurl="../Images/ButtonBarImport.gif" onmouseout="this.src='../Images/ButtonBarImport.gif'" onmouseover="this.src='../Images/ButtonBarImportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Import&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><img src="../Images/ButtonBarDividerR.gif" alt="" /></td><td class="prspace"><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td><td class="pra"><CMStTrafficSafety:PaginationMedium runat="server" id="TTrafficSafety_32_menusPagination"></CMStTrafficSafety:PaginationMedium>
<!--To change the position of the pagination control, please search for "prspace" on the Online Help for instruction. -->
                      </td><td><img src="../Images/paginationRowEdgeR.gif" alt="" /></td><td></td></tr></table>
</td></tr><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)"><tr class="tch"><th class="thcnb" colspan="4"><img src="../Images/space.gif" height="1" width="1" alt="" /></th><th class="thcwb" style="padding:0px;vertical-align:middle;"><asp:CheckBox runat="server" id="TTrafficSafety_32_menusToggleAll" onclick="toggleAllCheckboxes(this);">	</asp:CheckBox></th><th class="thc" scope="col"><asp:LinkButton runat="server" id="TenMenuLabel" tooltip="Sort by TenMenu" Text="= &quot;Tên menu&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="KieuMenuLabel" tooltip="Sort by KieuMenu" Text="= &quot;Kiểu Menu&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="LienKetLabel" tooltip="Sort by LienKet" Text="= &quot;Liên kết&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col"><asp:LinkButton runat="server" id="TargetsLabel" tooltip="Sort by Targets" Text="= &quot;Target Window&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col" style="width:60px;"><asp:LinkButton runat="server" id="ThuTuLabel" tooltip="Sort by ThuTu" Text="= &quot;Thứ tự&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th><th class="thc" scope="col" style="width:60px;text-align:center"><asp:LinkButton runat="server" id="HoatDongLabel" tooltip="Sort by HoatDong" Text="= &quot;Hoạt động&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th></tr><asp:Repeater runat="server" id="TTrafficSafety_32_menusTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_32_menusTableControlRow runat="server" id="TTrafficSafety_32_menusTableControlRow">
<tr><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusRowEditButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_edit.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:EditRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusRowCopyButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_copy.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:CopyRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_32_menusRowDeleteButton" causesvalidation="False" commandname="DeleteRecord" cssclass="button_link" imageurl="../Images/icon_delete.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:DeleteRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticwb"><asp:CheckBox runat="server" id="TTrafficSafety_32_menusRecordRowSelection" onclick="moveToThisTableRow(this);">	</asp:CheckBox></td><td class="ttc"><asp:Literal runat="server" id="TenMenu"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="KieuMenu"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="LienKet"></asp:Literal> </td><td class="ttc"><asp:Literal runat="server" id="Targets"></asp:Literal> </td><td class="ttc" style="text-align: right;width:60px;"><asp:Literal runat="server" id="ThuTu"></asp:Literal> </td><td class="ttc" style="width:60px;text-align:center"><asp:Literal runat="server" id="HoatDong"></asp:Literal> </td></tr></CMStTrafficSafety:TTrafficSafety_32_menusTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_32_menusTableControl>

            </td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                