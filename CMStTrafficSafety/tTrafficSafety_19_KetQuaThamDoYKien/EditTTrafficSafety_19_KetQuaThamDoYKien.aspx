﻿<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTTrafficSafety_19_KetQuaThamDoYKien.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.EditTTrafficSafety_19_KetQuaThamDoYKien" %>
<%@ Register Tagprefix="CMStTrafficSafety" Namespace="CMStTrafficSafety.UI.Controls.EditTTrafficSafety_19_KetQuaThamDoYKien" %>

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

                        <CMStTrafficSafety:TTrafficSafety_19_KetQuaThamDoYKienRecordControl runat="server" id="TTrafficSafety_19_KetQuaThamDoYKienRecordControl">	<table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle"><asp:Literal runat="server" id="TTrafficSafety_19_KetQuaThamDoYKienTitle" Text="&lt;%#String.Concat(GetResourceValue(&quot;Title:Edit&quot;),&quot; Traffic Safety 19 Ket Qua Tham Do YKien&quot;) %>">	</asp:Literal></td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="TTrafficSafety_19_KetQuaThamDoYKienRecordControlCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td><asp:panel id="TTrafficSafety_19_KetQuaThamDoYKienRecordControlPanel" runat="server"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="fls"><asp:Literal runat="server" id="IpLabel" Text="= &quot;Ip độc giả&quot;">	</asp:Literal></td><td class="dfv"><asp:TextBox runat="server" id="Ip" Columns="50" MaxLength="50" cssclass="field_input"></asp:TextBox>&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="IpTextBoxMaxLengthValidator" ControlToValidate="Ip" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;Ip&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="ThamDoYKienIdLabel" Text="= &quot;Câu hỏi thăm dò&quot;">	</asp:Literal></td><td class="dfv" style="white-space:nowrap;"><asp:DropDownList runat="server" id="ThamDoYKienId" cssclass="field_input" onkeypress="dropDownListTypeAhead(this,false)"></asp:DropDownList>
<Selectors:FvLlsHyperLink runat="server" id="ThamDoYKienIdFvLlsHyperLink" ControlToUpdate="ThamDoYKienId" Text="&lt;%# GetResourceValue(&quot;LLS:Text&quot;, &quot;CMStTrafficSafety&quot;) %>" MinListItems="100" Table="tTrafficSafety_18_ThamDoYKien" Field="TTrafficSafety_18_ThamDoYKien_.id" DisplayField="%3dTTrafficSafety_18_ThamDoYKien.CauHoiThamDo"></Selectors:FvLlsHyperLink> 
<asp:ImageButton runat="server" id="ThamDoYKienIdAddRecordLink" causesvalidation="False" commandname="Redirect" imageurl="../Images/iconNewFlat.gif" tooltip="&lt;%# GetResourceValue(&quot;Btn:Add&quot;, &quot;CMStTrafficSafety&quot;) %>">		
	</asp:ImageButton> </td></tr><tr><td class="fls"><asp:Literal runat="server" id="TraLoiLabel" Text="= &quot;Trả lời&quot;">	</asp:Literal></td><td class="dfv"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td style="padding-right: 5px; vertical-align:top">
<asp:TextBox runat="server" id="TraLoi" Columns="14" MaxLength="14" onkeyup="adjustInteger(this, event.keyCode)" cssclass="field_input"></asp:TextBox></td>
<td style="padding-right: 5px; white-space:nowrap;">
<%# SystemUtils.GenerateIncrementDecrementButtons(true, FindControlRecursively("TraLoi"),"NumberTextBox","","","") %>
</td>
<td>
&nbsp;
<BaseClasses:TextBoxMaxLengthValidator runat="server" id="TraLoiTextBoxMaxLengthValidator" ControlToValidate="TraLoi" ErrorMessage="&lt;%# GetResourceValue(&quot;Val:ValueTooLong&quot;, &quot;CMStTrafficSafety&quot;).Replace(&quot;{FieldName}&quot;, &quot;TraLoi&quot;) %>"></BaseClasses:TextBoxMaxLengthValidator></td>
</tr>
</table>
 </td></tr></table></asp:panel>
</td></tr></table>
</asp:panel></td></tr></table>
</CMStTrafficSafety:TTrafficSafety_19_KetQuaThamDoYKienRecordControl>

            <%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("SaveAndNewButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("OKButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("EditButton"))%>
<%= SystemUtils.GenerateEnterKeyCaptureEndTag(FindControlRecursively("CancelButton"))%>
</td></tr><tr><td class="recordPanelButtonsAlignment"><table cellpadding="0" cellspacing="0" border="0"><tr><td><CMStTrafficSafety:ThemeButton runat="server" id="SaveButton" button-causesvalidation="True" button-commandname="UpdateData" button-text="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Save&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="True"></CMStTrafficSafety:ThemeButton></td><td><CMStTrafficSafety:ThemeButton runat="server" id="CancelButton" button-causesvalidation="False" button-commandname="Redirect" button-text="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" button-tooltip="&lt;%# GetResourceValue(&quot;Btn:Cancel&quot;, &quot;CMStTrafficSafety&quot;) %>" postback="False"></CMStTrafficSafety:ThemeButton></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                