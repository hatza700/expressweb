<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.ShowTTrafficSafety_24_ViTriQuangCaoTable" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Tagprefix="CMStTrafficSafety" TagName="ThemeButton" Src="../Shared/ThemeButton.ascx" %>

<%@ Register Tagprefix="CMStTrafficSafety" TagName="PaginationMedium" Src="../Shared/PaginationMedium.ascx" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="ShowTTrafficSafety_24_ViTriQuangCaoTable.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.ShowTTrafficSafety_24_ViTriQuangCaoTable" %>
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
                        <CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoTableControl runat="server" id="TTrafficSafety_24_ViTriQuangCaoTableControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_24_ViTriQuangCaoTitle" Text="&lt;%#String.Concat(&quot;Traffic Safety 24 Vi Tri Quang Cao&quot;) %>">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_24_ViTriQuangCaoTableControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fila"><%# GetResourceValue("Txt:SearchFor", "CMStTrafficSafety") %></td><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("TTrafficSafety_24_ViTriQuangCaoSearchButton"))%>
<asp:TextBox runat="server" id="TTrafficSafety_24_ViTriQuangCaoSearch" columns="50" cssclass="Search_Input">	</asp:TextBox>
<asp:AutoCompleteExtender id="TTrafficSafety_24_ViTriQuangCaoSearchAutoCompleteExtender" runat="server" TargetControlID="TTrafficSafety_24_ViTriQuangCaoSearch" ServiceMethod="GetAutoCompletionList_TTrafficSafety_24_ViTriQuangCaoSearch" MinimumPrefixLength="2" CompletionInterval="700" CompletionSetCount="10" CompletionListCssClass="autotypeahead_completionListElement" CompletionListItemCssClass="autotypeahead_listItem " CompletionListHighlightedItemCssClass="autotypeahead_highlightedListItem">
</asp:AutoCompleteExtender>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("TTrafficSafety_24_ViTriQuangCaoSearchButton"))%>
</td><td class="filbc"><CMStTrafficSafety:ThemeButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoSearchButton" button-causesvalidation="False" button-commandname="Search" button-text="&lt;%# GetResourceValue(&quot;Btn:SearchGoButtonText&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:SearchGoButtonText&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr><tr><td class="fila"><asp:Literal runat="server" id="ViTriLabel1" Text="= &quot;Vị trí quảng cáo&quot;">	</asp:Literal></td><td><%= SystemUtils.GenerateEnterKeyCaptureBeginTag(FindControlRecursively("TTrafficSafety_24_ViTriQuangCaoFilterButton"))%>
<asp:DropDownList runat="server" id="ViTriFilter" autopostback="True" cssclass="Filter_Input" onkeypress="dropDownListTypeAhead(this,false)">	</asp:DropDownList><%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("TTrafficSafety_24_ViTriQuangCaoFilterButton"))%>
</td><td class="filbc" rowspan="1"></td></tr></table>
</td></tr><tr><td class="pr"><table cellpadding="0" cellspacing="0" border="0" style="width: 100%;"><tr><td><img src="../Images/paginationRowEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarEdgeL.gif" alt="" /></td><td class="prbbc"><img src="../Images/ButtonBarDividerL.gif" alt="" /></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoNewButton" causesvalidation="False" commandname="Redirect" imageurl="../Images/ButtonBarNew.gif" onmouseout="this.src='../Images/ButtonBarNew.gif'" onmouseover="this.src='../Images/ButtonBarNewOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoDeleteButton" causesvalidation="False" commandname="DeleteRecord" imageurl="../Images/ButtonBarDelete.gif" onmouseout="this.src='../Images/ButtonBarDelete.gif'" onmouseover="this.src='../Images/ButtonBarDeleteOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Delete&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoExportExcelButton" causesvalidation="False" commandname="ExportDataExcel" imageurl="../Images/ButtonBarExcelExport.gif" onmouseout="this.src='../Images/ButtonBarExcelExport.gif'" onmouseover="this.src='../Images/ButtonBarExcelExportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:ExportExcel&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoImportButton" causesvalidation="False" commandname="ImportCSV" imageurl="../Images/ButtonBarImport.gif" onmouseout="this.src='../Images/ButtonBarImport.gif'" onmouseover="this.src='../Images/ButtonBarImportOver.gif'" tooltip="&lt;%# GetResourceValue(&quot;Btn:Import&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="prbbc"><img src="../Images/ButtonBarDividerR.gif" alt="" /></td><td class="prspace"><img src="../Images/ButtonBarEdgeR.gif" alt="" /></td><td class="pra"><CMStTrafficSafety:PaginationMedium runat="server" id="TTrafficSafety_24_ViTriQuangCaoPagination"></CMStTrafficSafety:PaginationMedium>
<!--To change the position of the pagination control, please search for "prspace" on the Online Help for instruction. -->
                      </td><td><img src="../Images/paginationRowEdgeR.gif" alt="" /></td><td></td></tr></table>
</td></tr><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0" width="100%" onkeydown="captureUpDownKey(this, event)"><tr class="tch"><th class="thcnb" colspan="4"><img src="../Images/space.gif" height="1" width="1" alt="" /></th><th class="thcwb" style="padding:0px;vertical-align:middle;"><asp:CheckBox runat="server" id="TTrafficSafety_24_ViTriQuangCaoToggleAll" onclick="toggleAllCheckboxes(this);">	</asp:CheckBox></th><th class="thc" scope="col"><asp:LinkButton runat="server" id="ViTriLabel" tooltip="Sort by ViTri" Text="= &quot;Vị trí quảng cáo&quot;" CausesValidation="False">	</asp:LinkButton>
                        </th></tr><asp:Repeater runat="server" id="TTrafficSafety_24_ViTriQuangCaoTableControlRepeater">		<ITEMTEMPLATE>		<CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoTableControlRow runat="server" id="TTrafficSafety_24_ViTriQuangCaoTableControlRow">
<tr><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoRowViewButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_view.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:ViewRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoRowEditButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_edit.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:EditRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoRowCopyButton" causesvalidation="False" commandname="Redirect" cssclass="button_link" imageurl="../Images/icon_copy.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:CopyRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticnb" scope="row"><asp:ImageButton runat="server" id="TTrafficSafety_24_ViTriQuangCaoRowDeleteButton" causesvalidation="False" commandname="DeleteRecord" cssclass="button_link" imageurl="../Images/icon_delete.gif" tooltip="&lt;%# GetResourceValue(&quot;Txt:DeleteRecord&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton></td><td class="ticwb"><asp:CheckBox runat="server" id="TTrafficSafety_24_ViTriQuangCaoRecordRowSelection" onclick="moveToThisTableRow(this);">	</asp:CheckBox></td><td class="ttc"><asp:Literal runat="server" id="ViTri"></asp:Literal> </td></tr></CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoTableControlRow>
</ITEMTEMPLATE>

</asp:Repeater>
</table>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_24_ViTriQuangCaoTableControl>

            </td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                