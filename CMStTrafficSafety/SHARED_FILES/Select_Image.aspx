<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Select_Image.aspx.vb" Inherits="SHARED_FILES_Select_Image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
html,body{height:100%}
</style>
</head>
<body>
    <form id="form1" runat="server">
   
     <script>
     
         jQuery.NoConflict();

         var $jqp;
         function xx() {
             try {
                 var sId = document.getElementById("<%= hdh_parent_folder.ClientID %>").value;
                 writeCookie('sessionId_createfolder', sId, 1);
                 // Triggering bPopup when click event is fired
                 $jqp = $('#bMulti').bPopup({
                     modalClose: false,
                     modal: true,
                     opacity: 0.2, positionStyle: 'fixed'

                 });
             }
             catch (ex) {
                 alert(ex);
             }
         }

         function tool_bar_view_image() {
             try {
                 var sId = document.getElementById("<%= hdh_parent_folder.ClientID %>").value;
                 writeCookie('sessionId_createfolder', sId, 1);
                 // Triggering bPopup when click event is fired
                 $jqp = $('#divviewimage').bPopup({
                     modalClose: true,
                     modal: true,
                     opacity: 0.2, positionStyle: 'fixed'

                 });
             }
             catch (ex) {
                 alert(ex);
             }
         }


         function chonanhkhac() {
             document.getElementById("<%= hdh_action.ClientID %>").value = "other";
             __doPostBack("", "")
         }

         function closeuploadpopup() {

             $jqp.close();
         }
     
 </script>

	<link href="../App_Themes/managerimage2.css" rel="stylesheet" type="text/css" />


   <script>
       var bppopup_show;



       //EDIT FOLDER

       function call_deletpopup(action, el, pos) {
           try {
               var sId = jQuery(el).attr("href");
               writeCookie('sessionId_createfolder', sId, 1);
               sId = jQuery(el).text();
               writeCookie('sessionId_createfolder_name', sId, 1);
               document.getElementById("<%= hdh_delete_folder.ClientID %>").value = jQuery(el).text();
               var div = document.getElementById('divID');

               div.innerHTML = jQuery(el).text();
               // Triggering bPopup when click event is fired
               bppopup_show = jQuery('#deletefolder').bPopup({
                   modalClose: false,
                   modal: true,
                   opacity: 0.1, positionStyle: 'fixed'
               });
           } catch (ex) {

               alert(ex);
           }
       }


       //NHAN GIA TRI SELECT CUA TREEVIEW

       function SetSELECTEDNODE() {
           var treeViewData = window["<%=PictureTree.ClientID%>" + "_Data"];
           if (treeViewData.selectedNodeID.value != "") {
               var selectedNode = document.getElementById(treeViewData.selectedNodeID.value);
               var value = selectedNode.href.substring(selectedNode.href.indexOf(",") + 3, selectedNode.href.length - 2);
               var text = selectedNode.innerHTML;
               document.getElementById("<%= hdh_action.ClientID %>").value = "selected";
               document.getElementById("<%= hdh_parent_folder.ClientID %>").value = value;
               //__doPostBack("", "")
              // alert("Text: " + text + "\r\n" + "Value: " + value);
           } else {
               ///  alert("No node selected.")
           }
           return false;
       }

       function GetSelectedNode() {
           var treeViewData = window["<%=PictureTree.ClientID%>" + "_Data"];
           if (treeViewData.selectedNodeID.value != "") {
               var selectedNode = document.getElementById(treeViewData.selectedNodeID.value);
               var value = selectedNode.href.substring(selectedNode.href.indexOf(",") + 3, selectedNode.href.length - 2);
               var text = selectedNode.innerHTML;
               document.getElementById("<%= hdh_action.ClientID %>").value = "selected";
               document.getElementById("<%= hdh_parent_folder.ClientID %>").value = value;
               __doPostBack("", "")
               // alert("Text: " + text + "\r\n" + "Value: " + value);
           } else {
               ///  alert("No node selected.")
           }
           return false;
       }

       //view folder
       function view_folder(ifolder_name, ifolderpath) {
           // alert('view folder');hdh_curent_folder
           document.getElementById("<%= hdh_curent_folder.ClientID %>").value = ifolder_name;
       }

       function change_class(objid, oldclass, new_class, ifolder_name, ifolderpath) {
           var s1, s2;
           s1 = document.getElementById(objid).className;

           if (s1 == oldclass) {
               try {
                   document.getElementById(objid).className = new_class;
                   $("#" + objid).removeClass(oldclass);
                   $(this).addClass(new_class);
               }
               catch (ex) {

                   alert(ex);

               }

           }
           else {

               document.getElementById(objid).className = oldclass;
               $("#" + objid).removeClass(new_class);
               $(this).addClass(oldclass);
           }
           document.getElementById("<%= hdh_curent_folder.ClientID %>").value = ifolder_name;
           view_folder(ifolder_name, ifolderpath);
       }


       function change_class_images(objid, oldclass, new_class, imagename, iimagepath) {
           var s1, s2;
           s1 = document.getElementById(objid).className;

           if (s1 == oldclass) {
               try {
                   document.getElementById(objid).className = new_class;
                   $("#" + objid).removeClass(oldclass);
                   $(this).addClass(new_class);
               }
               catch (ex) {

                   alert(ex);

               }

           }
           else {

               document.getElementById(objid).className = oldclass;
               $("#" + objid).removeClass(new_class);
               $(this).addClass(oldclass);
           }
           //document.getElementById("<%= hdh_curent_image.ClientID %>").value = imagename;
           view_image(imagename, iimagepath);
       }
       function view_image(imagename, iimagepath) {
           //  alert('view image');hdh_curent_image
           document.getElementById("<%= hdh_curent_image.ClientID %>").value = imagename;
      
           var str = document.getElementById("<%= hdh_parent_folder.ClientID %>").value;

          
           var res = str.split(/\\/);
           var len = res.length;
           var url_folder = res[len - 1] + imagename;
           writeCookie("anhduocchon", url_folder, 1);
        
           document.getElementById("<%= hdh_action.ClientID %>").value = "selected_image";
           //image_full_name
           document.getElementById("<%= image_full_name.ClientID %>").value = url_folder
           __doPostBack("", "")
       }

       //LAM VIEC VOI TEP TIN ANH

       //DOI TEN TEP TIN

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
    
   </script>
      <script src="../App_Themes/jquery-1.9.1.js"></script>
 
 <div class="pcC">
    <div id="browser">

                <div class="rounded">

                    <div class="top-outer"><div class="top-inner"><div class="top"></div></div></div>

                    <div class="mid-outer"><div class="mid-inner"><div class="mid">   

                        <div id="updPanel">

	   

                                <div class="sidebar">

                                    <div class="title">Thư mục</div>

                                    <div class="folders" id="demo2" >

                                        <a href="#tvFolders_SkipLink"><img alt="Skip Navigation Links." src="/webroot/WebResource.axd?d=nQQ5GOOUHmDYMU7Mce9AaA2&amp;t=634170581585244168" width="0" height="0" style="border-width:0px;" /></a><div id="tvFolders" class="tree" style=" overflow:auto;">

	<asp:TreeView ID="PictureTree"  runat="server" ShowLines="True" CssClass="Node"  Onclick="return GetSelectedNode();">
                        <SelectedNodeStyle Font-Bold="True" />
                        <NodeStyle ImageUrl="~/Styless/images/Folder.jpg" />
                    </asp:TreeView>

	                                       </div><a id="tvFolders_SkipLink"></a>      

                                    </div>                      

                                </div>

                                <div class="content" >

                                      <div class="title">Lựa chọn ảnh từ hệ thống</div>

                                            <div class="" style="overflow:auto !important">
                                            <table class="grid" cellpadding="0" cellspacing="0" style="">

                                                

                                              <tbody>
                                              <tr>
                                              <td style="overflow:hidden;">
                                              <div style="overflow:hidden;">
                                              <asp:Literal ID="clt_lite_ContentImage" runat="server"></asp:Literal>
                                              </div>
                                              </td>
                                                <td ><asp:Literal ID="clt_lite_ContentTitle" runat="server"></asp:Literal></td>
                                              </tr>
                                              </tbody>  

                                            </table>
</div>
                                        <br />

                                        

                                </div>

                           
                            

</div>      

                    </div></div></div>

                    <div class="bottom-outer"><div class="bottom-inner"><div class="bottom"></div></div></div>                      

               </div>









            </div>
     </div>
    <input id="hiddenField1" type="hidden" runat="server" />
              <input id="Hidden_HDID" runat="server" type="hidden" style="display:none;" />
    
    
    
       
    
    
		
		    

	
<asp:HiddenField ID="hdh_action" runat="server" />
<asp:HiddenField ID="hdh_parent_folder" runat="server" />
<asp:HiddenField ID="hdh_new_folder" runat="server" />
<asp:HiddenField ID="hdh_curent_folder" runat="server" />
<asp:HiddenField ID="hdh_old_rename_folder" runat="server" />
<asp:HiddenField ID="hdh_rename_folder" runat="server" />
<asp:HiddenField ID="hdh_delete_folder" runat="server" />
<asp:Button ID="btn_action" runat="server" Text="Button" CssClass="hiddencss" />
<asp:HiddenField ID="hdh_curent_image" runat="server" />
<asp:HiddenField ID="hdh_rename_image" runat="server" />
<asp:HiddenField ID="hdh_old_rename_image" runat="server" />
<asp:HiddenField ID="image_full_name" runat="server" />

    </form>
</body>
</html>
