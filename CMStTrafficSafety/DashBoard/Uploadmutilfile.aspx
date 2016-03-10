<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Uploadmutilfile.aspx.vb" Inherits="DashBoard_Uploadmutilfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <script src="../App_Themes/jquery-1.9.1.js"></script>
<script>
    function writeCookie(name, value, days) {
        var date, expires;
        if (days) {
            date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toGMTString();
        } else {
            expires = "";
        }
        document.cookie = name + "=" + value + expires + "; path=/";
    }

    function readCookie(name) {
        var i, c, ca, nameEQ = name + "=";
        ca = document.cookie.split(';');
        for (i = 0; i < ca.length; i++) {
            c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1, c.length);
            }
            if (c.indexOf(nameEQ) == 0) {
                return c.substring(nameEQ.length, c.length);
            }
        }
        return '';
    }
    jQuery(window).load(function() {
        var sId = readCookie('sessionId_createfolder');
        if (sId.length > 0) {
          //  alert(sId);
            document.getElementById("hdh_curent_folder").value = sId;
           // alert(document.getElementById("hdh_curent_folder").value);
        }
    });
</script>

<style>
 #divFile p { 
            font:13px tahoma, arial; 
        }
        #divFile h3 { 
            font:16px arial, tahoma; 
            font-weight:bold;
        }
        .hdhhidden{ display:none; visibility:hidden;}
</style>
    <title></title>
    <script>
    $('#btUpload').click(function() { 
        if (fileUpload.value.length == 0) {    // CHECK IF FILE(S) SELECTED.
            alert('No files selected.');        
            return false; 
        } 
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divFile" align="left" style='margin-left:20px;'>
            <h3>Upload ảnh lên hệ thống</h3>
            
            <p><asp:FileUpload ID="fileUpload" multiple="true" runat="server" /></p>
            <p>
                <p><asp:Button ID="btUpload" Text ="Upload Files" 
                    OnClick="Upload_Files" runat="server" /></p>
            </p>
            <p><asp:label id="lblFileList" runat="server"></asp:label></p>
            <p><asp:Label ID="lblUploadStatus" runat="server"></asp:Label></p>
            <p><asp:Label ID="lblFailedStatus" runat="server"></asp:Label></p>
        </div>
    <input id="hdh_curent_folder" type="text"  runat="server" class="hdhhidden"  />
        <asp:HiddenField ID="hdh_curent_folder1" runat="server" />
    </form>
</body>
</html>
