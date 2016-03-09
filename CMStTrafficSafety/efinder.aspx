<%@ Page Language="VB" AutoEventWireup="false" CodeFile="efinder.aspx.vb" Inherits="efinder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="elfinder/js/jquery-1.4.1.min.js" type="text/javascript" charset="utf-8"></script>

    <script src="elfinder/js/jquery-ui-1.7.2.custom.min.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" href="elfinder/js/ui-themes/base/ui.all.css" type="text/css" media="screen"
        charset="utf-8">

    <script src="elfinder/js/elfinder.full.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" href="elfinder/css/elfinder.css" type="text/css" media="screen" charset="utf-8">

    <script src="elfinder/js/i18n/elfinder.es.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
            $('#finder').elfinder({
            url: 'CMStTrafficSafety.elfinder.connector',
                lang: 'en'
            });
        });
    </script>
</head>
<body style="margin-right:6px;">
    <form id="form1" runat="server">
   <div id="finder" >
    </div>
    </form>
</body>
</html>
