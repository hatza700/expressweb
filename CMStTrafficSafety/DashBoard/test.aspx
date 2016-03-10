<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="DashBoard_test" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <CKEditor:CKEditorControl ID="txt_motangan" too runat="server" width="750px" Height="100px">
    </CKEditor:CKEditorControl>
    
    </div>
    </form>
</body>
</html>
