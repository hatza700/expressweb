<%@ Register Tagprefix="Selectors" Namespace="CMStTrafficSafety" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeFile="AdminLogs.aspx.vb" Culture="en-US" MasterPageFile="../Master Pages/VerticalMenu.master" Inherits="CMStTrafficSafety.UI.AdminLogs" %>
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

                <table cellpadding="0" cellspacing="0" border="0"><tr><td><table class="dv" cellpadding="0" cellspacing="0" border="0"><tr><td class="dh"><table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="dhel"><img src="../Images/space.gif" alt="" /></td><td class="dheci" valign="middle"><asp:CollapsiblePanelExtender id="BlankFramePanelExtender" runat="server" TargetControlid="BlankFrameCollapsibleRegion" ExpandControlID="BlankFrameIcon" CollapseControlID="BlankFrameIcon" ImageControlID="BlankFrameIcon" ExpandedImage="../images/icon_panelcollapse.gif" CollapsedImage="../images/icon_panelexpand.gif" SuppressPostBack="true" />
<asp:ImageButton id="BlankFrameIcon" runat="server" ToolTip="&lt;%# GetResourceValue(&quot;Btn:ExpandCollapse&quot;) %&gt;" causesvalidation="False" imageurl="../images/icon_panelcollapse.gif" /></td><td class="dhb"><table cellpadding="0" cellspacing="0" border="0"><tr><td class="dht" valign="middle">Admin log statics</td></tr></table>
</td><td class="dher"><img src="../Images/space.gif" alt="" /></td></tr></table>
</td></tr><tr><td><asp:panel id="BlankFrameCollapsibleRegion" runat="server"><table class="dBody" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="tre"><table cellpadding="0" cellspacing="0" border="0"><tr><td><table style="width: 100%;height: 100%" cellpadding="0" cellspacing="0">
                   <tr>
                   <td style="width:12px;" id="tdtop16">
                   </td>
                   <td style="width:762px;" id="tdtop17">
                       </td>
                   <td style="width:9px;" id="tdtop18">
                   </td>
                   </tr>
                       <tr>
                           <td align="left" colspan="3" id="tdmid6">
                           <asp:Literal ID="lite_nhatki7" runat="server"></asp:Literal>
                               <br />
                               <div style="margin-left:20px;">
                               <asp:GridView ID="GridView11" runat="server" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False" Width="99%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="30">
                               <Columns>
                               <asp:TemplateField>
                               <HeaderTemplate>Thời điểm truy cập</HeaderTemplate>
                               <ItemTemplate>
                               <asp:Literal ID="lite_113" runat="server"></asp:Literal>
                               </ItemTemplate>                              
                                 <ControlStyle Width="60px" />
                <HeaderStyle Width="200px" />                            
                               </asp:TemplateField>
                               
                               <asp:TemplateField>
                               <HeaderTemplate>Tên truy cập</HeaderTemplate>
                               <ItemTemplate>
                               <asp:Literal ID="lite_119" runat="server"></asp:Literal>
                               </ItemTemplate>
                               </asp:TemplateField>
							   
							    <asp:TemplateField>
                               <HeaderTemplate>Hành động</HeaderTemplate>
                               <ItemTemplate>
                               <asp:Literal ID="lite_127" runat="server"></asp:Literal>
                               </ItemTemplate>
                               </asp:TemplateField>
                               
                               <asp:TemplateField>
                               <HeaderTemplate>Địa chỉ Website</HeaderTemplate>
                               <ItemTemplate>
                               <asp:Literal ID="lite_136" runat="server"></asp:Literal>
                               </ItemTemplate>
                               </asp:TemplateField>
                               </Columns>
                                   <RowStyle ForeColor="#000066" />
                                   <FooterStyle BackColor="White" ForeColor="#000066" />
                                   <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" cssclass="gridview" />
                                   <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                   <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                               </asp:GridView>
                               </div>
                           </td>
                       </tr>
                   <tr>
                   <td colspan="3" id="td5" style="" align="left">
              
                      <div style="padding-left:10px;">
                       
    
                        
   
   
                       
                       
                       
                       
                       
                       
                       
                        </div>
                        </td>
                        
                   </tr>
                   <tr>
                   <td style="width:12px;" id="tdbot16">
                   </td>
                   <td style="width:762px;" id="tdbot17">
                   </td>
                   <td style="width:9px;" id="tdbot18">
                   </td>
                   </tr>
                   </table></td></tr></table>
</td></tr></table>
</asp:panel></td></tr></table>
</td></tr></table>
    </ContentTemplate>
</asp:UpdatePanel>

    <div id="detailPopup" class="detailRolloverPopup" onmouseout="detailRolloverPopupClose();" onmouseover="clearTimeout(gPopupTimer);"></div>
    <asp:ValidationSummary id="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server"></asp:ValidationSummary>
</asp:Content>
                