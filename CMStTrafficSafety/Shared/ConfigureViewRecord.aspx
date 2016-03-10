﻿<%@ Page Language="vb" AutoEventWireup="false" Inherits="CMStTrafficSafety.UI.BaseApplicationPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head runat="server">

<script runat="server" language="VB">
Public Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
    Dim selectedTheme As String = Me.GetSelectedTheme()
    If Not String.IsNullOrEmpty(selectedTheme) Then Me.Page.Theme = selectedTheme
End Sub
</script>
<title>Configure View Record Page</title>
</head><body>
<table cellspacing="0" cellpadding="0" border="0" class="pageBackground">
  <tr>
  <td class="pageAlignment">
    <table cellspacing="0" cellpadding="0" border="0" class="borderTable">
      <tr>
        <td class="pageBorderTL"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
        <td class="pageBorderT"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
        <td class="pageBorderTR"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
      </tr>
      <tr>
        <td class="pageBorderL"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
        <td class="pageBorderC">
	<table cellspacing="0" cellpadding="0" border="0">
	 <tr>
	  <td class="page_yellow">
		<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1">
		  <tr>
		  	<td class="dialog_header" colspan="3">
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				  <tr>
				    <td class="dialogHeaderEdgeL"><img src="../Images/space.gif" alt="" /></td>
				    <td class="dhb">
				        <table border="0" cellpadding="0" cellspacing="0">
				            <tr>
								<td class="dialog_header_text">Configuring a View Record Page</td>
				            </tr>
				        </table>
				    </td>
				    <td class="dialogHeaderEdgeR"><img src="../Images/space.gif" alt="" /></td>
				  </tr>
				</table>
		  	</td>
		  </tr>
		  <tr>
		  	<td style="width: 20px;"></td>
			<td class="configureErrorPagesText"><br />
				You cannot view the selected record because the underlying View button or icon is not yet bound to a View Record page.<br /><br /> 
				To bind the View button or icon to a View Record page:<br /><br />			
			    <ol>
			      <li>If you have not yet created a View Record page, use the Application Wizard to create one.<br /><br /></li>
			      <li>Go to the Application Explorer tab, navigate in the tree to the page that contains the View button or icon, then click the Properties button on the tool bar.<br /><br />
			      <ul style="list-style-type:disc">
			      	<li>Select the name of the View button or icon in the tree.</li>
			      	<li>On the Bindings tab, modify the Redirect URL to point to your View Record page.<br />Example:  ../MyPages/MyViewRecordPage.aspx?QueryStringParam={0}<br /><br /></li>
			      	<li>Make sure the Redirect parameter is "ID".<br /><br /></li>
			      </ul>
			      </li>
			      <li>Save changes and rebuild the application.</li>
			    </ol>
		    </td>
		  	<td style="width: 20px;"></td>
		  </tr>
		</table>
	  </td>
	 </tr>
	</table>
      </td>
      <td class="pageBorderR"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
    </tr>
    <tr>
      <td class="pageBorderBL"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
      <td class="pageBorderB"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
      <td class="pageBorderBR"><img src="../Images/space.gif" height="1" width="1" alt="" /></td>
    </tr>
  </table>
  </td>
  </tr>
</table>
</body></html>