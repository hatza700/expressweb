<%@ Control Language="VB" AutoEventWireup="false" CodeFile="uccontrol.ascx.vb" Inherits="DashBoard_uccontrol" %>

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
             modal:true, 
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

     //DOWNLOAD
     function tool_bar_view_download() {
         document.getElementById("<%= hdh_action.ClientID %>").value = "download";
         var txt;
         txt = document.getElementById("<%= hdh_curent_image.ClientID %>").value;
         if (txt.length == 0) {
             alert('Bạn chưa chọn tệp tin');
         }
         else {
             __doPostBack("", "")
         }
        
     }
     function tool_bar_view_delete() {
         txt = document.getElementById("<%= hdh_curent_image.ClientID %>").value;
         writeCookie('sessionId_imagedelete', txt, 1);
        // alert(txt);
         document.getElementById("<%= hdh_action.ClientID %>").value = "delete2";
         if (txt.length == 0) {
             alert('Bạn chưa chọn tệp tin cần xóa');
         }
         else {
             try {
                 var sId = document.getElementById("<%= hdh_parent_folder.ClientID %>").value;
                 writeCookie('sessionId_createfolder', sId, 1);
                 // Triggering bPopup when click event is fired
                 var div = document.getElementById('Span45');
                 txt = document.getElementById("<%= hdh_curent_image.ClientID %>").value;
                 div.innerHTML = txt;
                 
                 $jqp = $('#div_delete_image').bPopup({
                     modalClose: false,
                     modal: true,
                     opacity: 0.2, positionStyle: 'fixed'

                 });
             }
             catch (ex) {
                 alert(ex);
             }
         }
     }
     function tool_bar_view_rename() {
         txt = document.getElementById("<%= hdh_curent_image.ClientID %>").value;
         document.getElementById("<%= hdh_action.ClientID %>").value = "rename2";
         if (txt.length == 0) {
             alert('Bạn chưa chọn tệp tin');
         }
         else {
             try {
                 var sId = document.getElementById("<%= hdh_parent_folder.ClientID %>").value;
                 writeCookie('sessionId_createfolder', sId, 1);
                 // Triggering bPopup when click event is fired
                 $jqp = $('#div_rename_image').bPopup({
                     modalClose: false,
                     modal: true,
                     opacity: 0.2, positionStyle: 'fixed'

                 });
             }
             catch (ex) {
                 alert(ex);
             }
         }
     }
     function closeuploadpopup() {

         $jqp.close();
     }
     
 </script>
 
 
    <div id="browser">

                <div class="rounded">

                    <div class="top-outer"><div class="top-inner"><div class="top"></div></div></div>

                    <div class="mid-outer"><div class="mid-inner"><div class="mid">   

                        <div id="updPanel">

	   

                                <div class="sidebar">

                                    <div class="title">Thư mục</div>

                                    <div class="folders" id="demo2">

                                        <a href="#tvFolders_SkipLink"><img alt="Skip Navigation Links." src="/webroot/WebResource.axd?d=nQQ5GOOUHmDYMU7Mce9AaA2&amp;t=634170581585244168" width="0" height="0" style="border-width:0px;" /></a><div id="tvFolders" class="tree">

	<asp:TreeView ID="PictureTree" runat="server" ShowLines="True" CssClass="Node"  Onclick="return GetSelectedNode();">
                        <SelectedNodeStyle Font-Bold="True" />
                        <NodeStyle ImageUrl="~/Styless/images/Folder.jpg" />
                    </asp:TreeView>

	                                       </div><a id="tvFolders_SkipLink"></a>      

                                    </div>                      

                                </div>

                                <div class="content">

                                    

                                            

                                            <table class="grid" cellpadding="0" cellspacing="0" style="">

                                                <tr style="background:#ccc;height:42px;">
 

  <th colspan="2"  >
  <a id="Button5"    class="pure-button pure-button-active" href='#' onclick="xx()">
  <img src="Scripts/images/1445347898_icon-93-inbox-upload.png" style='width:20px; ' />
  Tải lên
  </a>
  
  <a id="A1"    class="pure-button pure-button-active" href='#' onclick="tool_bar_view_image();">
  <img src="Scripts/images/1445347890_icon-22-eye.png" style='width:20px; ' />
  Xem
  </a>
  
  <a id="A2"    class="pure-button pure-button-active" href='#' onclick="tool_bar_view_download()">
  <img src="Scripts/images/1445347908_icon-36-clipboard-download.png" style='width:20px; ' />
 Tải về
  </a>
  
  <a id="A3"    class="pure-button pure-button-active" href='#' onclick="tool_bar_view_rename()">
  <img src="Scripts/images/1445325584_icon-136-document-edit.png" style='width:20px; ' />
 Đổi tên
  </a>
  
  <a id="A4"    class="pure-button pure-button-active" href='#' onclick="tool_bar_view_delete()">
  <img src="Scripts/images/1445348035_icon-26-trash-can.png" style='width:20px; ' />
Xóa
  </a>
  
  
  
  <%--<asp:Literal ID="lit_title_upload" runat="server"></asp:Literal>
 
  
      &nbsp;<a href='#' id="mybutton" onclick="xx();">Upload ảnh lên hệ thống</a>--%>
     </th>




                                                   


                                                </tr>

                                              <tbody>
                                              <tr>
                                              <td style="overflow:auto;">
                                              <div style="overflow:auto;">
                                              <asp:Literal ID="clt_lite_ContentImage" runat="server"></asp:Literal>
                                              </div>
                                              </td>
                                                <td ><asp:Literal ID="clt_lite_ContentTitle" runat="server"></asp:Literal></td>
                                              </tr>
                                              </tbody>  

                                            </table>

                                        <br />

                                        

                                </div>

                           
                            

</div>      

                    </div></div></div>

                    <div class="bottom-outer"><div class="bottom-inner"><div class="bottom"></div></div></div>                      

               </div>









            </div>
    <input id="hiddenField1" type="hidden" runat="server" />
              <input id="Hidden_HDID" runat="server" type="hidden" style="display:none;" />
    <div id="bMulti" style='background-color:#fff;' class="bMulti">
    <iframe src="Uploadmutilfile.aspx" width="400px" height="250px"></iframe>
    <br />
    <input type=button onclick="closeuploadpopup()" value="Hủy bỏ" />
    <br />
    </div>
    <div id="divviewimage" style='background-color:#fff;' class="bMulti">
    <iframe src="view_image.aspx" width="600px" height="350px"></iframe>
    <br />

    <br />
    </div>
    
    <div id="createfolder" class="bMultidiaglog" style='width:300px;height:60px;'>
    <div class="ui-panel-wrapper">
    
    <div class="ui-header"> <asp:Literal ID="lit_title" runat="server"></asp:Literal></div>
    <div class="ui-contents">
    <div class="labels">Xin hãy chọn tên cho thư mục mới</div>
    <div>
     <asp:TextBox ID="txt_new_folder" runat="server" CssClass="search_box"></asp:TextBox>
    </div>
    
    
    
    </div>
   <div class="ui-dialog-buttons">
     <input id="Button1" type="button" value="OK" onclick="javascript:taofolder()" class="pure-button pure-button-active" />
         <input id="Button2" type="button"
             value="Hủy bỏ" onclick="javascript:close_menu()" style="margin-left:15px;" class="pure-button pure-button-active" />
    </div>
    </div>
    
    </div>
    
    <div id="editfolder" class="bMultidiaglog" style='width:300px;height:60px;'>
    <div class="ui-panel-wrapper">
    
    <div class="ui-header"> <asp:Literal ID="lit_title_rename_folder" runat="server"></asp:Literal></div>
    <div class="ui-contents">
    <div class="labels">Xin hãy chọn tên mới cho thư mục</div>
    <div>
     <asp:TextBox ID="txt_rename_folder" runat="server" CssClass="search_box"></asp:TextBox>
    </div>
    
    
    
    </div>
   <div class="ui-dialog-buttons">
     <input id="btn_rename_folder" type="button" value="OK" onclick="javascript:editfolder()" class="pure-button pure-button-active" />
         <input id="btn_cancel_2" type="button"
             value="Hủy bỏ" onclick="javascript:close_menu()" style="margin-left:15px;" class="pure-button pure-button-active" />
    </div>
    </div>
    
    </div>
    
    <div id="deletefolder" class="bMultidiaglog" style='width:300px;height:60px;'>
    <div class="ui-panel-wrapper">
    
    <div class="ui-header"> <asp:Literal ID="lit_delete_title" runat="server"></asp:Literal></div>
    <div class="ui-contents">
    <div class="labels">  <asp:Literal ID="lit_confirm_delete" runat="server"></asp:Literal><span id='divID'></span> " ?</div>

    
    
    
    </div>
   <div class="ui-dialog-buttons">
     <input id="Button3" type="button" value="OK" onclick="javascript:deletefolder()" class="pure-button pure-button-active" />
         <input id="Button4" type="button"
             value="Hủy bỏ" onclick="javascript:close_menu()" style="margin-left:15px;" class="pure-button pure-button-active" />
    </div>
    </div>
    
    </div>
    
    
       <div id="div_rename_image" class="bMultidiaglog" style='width:300px;height:60px;'>
    <div class="ui-panel-wrapper">
    
    <div class="ui-header"> <asp:Literal ID="lit_rename_image_title" runat="server"></asp:Literal></div>
    <div class="ui-contents">
    <div class="labels">Xin hãy chọn tên mới cho ảnh</div>
    <div>
     <asp:TextBox ID="txt_rename_image" runat="server" CssClass="search_box"></asp:TextBox>
    </div>
    
    
    
    </div>
   <div class="ui-dialog-buttons">
     <input id="Button6" type="button" value="OK" onclick="javascript:edit_image2()" class="pure-button pure-button-active" />
         <input id="Button7" type="button"
             value="Hủy bỏ" onclick="javascript:closeuploadpopup()" style="margin-left:15px;" class="pure-button pure-button-active" />
    </div>
    </div>
    
    </div>
    
    <div id="div_delete_image" class="bMultidiaglog" style='width:300px;height:60px;'>
    <div class="ui-panel-wrapper">
    
    <div class="ui-header"> <asp:Literal ID="lit_delete_image_title" runat="server"></asp:Literal></div>
    <div class="ui-contents">
    <div class="labels">  <asp:Literal ID="lit_delete_image_content" runat="server"></asp:Literal><span id='Span45'></span> " ?</div>

    
    
    
    </div>
   <div class="ui-dialog-buttons">
     <input id="Button8" type="button" value="OK" onclick="javascript:delete_image2()" class="pure-button pure-button-active" />
         <input id="Button9" type="button"
             value="Hủy bỏ" onclick="javascript:closeuploadpopup()" style="margin-left:15px;" class="pure-button pure-button-active" />
    </div>
    </div>
    
    </div>
    
    <ul id="myMenu" class="contextMenu">
            <li class="copy"><a href="#add">Tạo thư mục con</a>
            <li class="quit separator">
            			<li class="edit"><a href="#edit">Đổi tên</a></li>	
            			<li class="quit separator">
			<li class="delete"><a href="#delete">Xóa</a></li>
			
		</ul>
		
		    <ul id="mymenuimage" class="contextMenu">
            <li class="viewimg"><a href="#viewimg">Xem</a>
            <li class="quit separator">
            			<li class="editimg"><a href="#viewimg">Đổi tên</a></li>	
            			<li class="quit separator">
			<li class="deleteimg"><a href="#deleteimg">Xóa</a></li>
			
		</ul>

	<script src="../DashBoard/Scripts/jquery.contextMenu.js" type="text/javascript"></script>
	<link href="../DashBoard/Scripts/jquery.contextMenu.css" rel="stylesheet" type="text/css" />



   <script type="text/javascript">
       var bppopup_show;

       function taofolder() {
try
{


           var txt = document.getElementById("<%= txt_new_folder.ClientID %>").value;

           if (txt.length == 0) {

               alert('Tên thư mục con không được để trống');

           }
           else {
               var sId = readCookie('sessionId_createfolder');
               //  alert(sId);
               document.getElementById("<%= hdh_action.ClientID %>").value = "add";
               document.getElementById("<%= hdh_parent_folder.ClientID %>").value = sId;
               document.getElementById("<%= hdh_new_folder.ClientID %>").value = txt;
               __doPostBack("", "");  
           }

       }
       catch (ex) { alert(ex); }
       return false;
       }


       //EDIT FOLDER
       function editfolder() {

           var txt = document.getElementById("<%= txt_rename_folder.ClientID %>").value;

           if (txt.length == 0) {

               alert('Tên thư mục không được để trống');

           }
           else {
               var sId = readCookie('sessionId_createfolder');
               //  alert(sId);
               document.getElementById("<%= hdh_action.ClientID %>").value = "edit";
               document.getElementById("<%= hdh_old_rename_folder.ClientID %>").value = sId;
               document.getElementById("<%= hdh_rename_folder.ClientID %>").value = txt;

               __doPostBack("", "")
               var urls = document.location.toString().toLowerCase();
               urls = urls.replace("#", "");
               urls = urls.replace("?id=", "");
               urls = urls.replace("add", "");
               urls = urls.replace("edit", "");
               urls = urls.replace("delete", "");
               // alert(urls);
               //   window.location.href = urls+'?id=add';
           }


       }

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
    //XOA FOLDER
    function deletefolder() {
        var sId = readCookie('sessionId_createfolder');
        var sId2 = readCookie('sessionId_createfolder_name');
        //  alert(sId);
        document.getElementById("<%= hdh_action.ClientID %>").value = "delete";
        document.getElementById("<%= hdh_parent_folder.ClientID %>").value = sId;
        document.getElementById("<%= hdh_delete_folder.ClientID %>").value = sId2;

        __doPostBack("", "")
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
             alert("Text: " + text + "\r\n" + "Value: " + value);
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

    function change_class(objid, oldclass, new_class,ifolder_name,ifolderpath) {
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
       // alert(imagename);
    }

    //LAM VIEC VOI TEP TIN ANH

    //DOI TEN TEP TIN
    function edit_image2() {

        var txt = document.getElementById("<%= txt_rename_image.ClientID %>").value;

        if (txt.length == 0) {

            alert('Tên ảnh không được để trống');

        }
        else {
            var sId = readCookie('sessionId_createfolder');
            //  alert(sId);
            document.getElementById("<%= hdh_action.ClientID %>").value = "edit_image";
          //  document.getElementById("<%= hdh_old_rename_folder.ClientID %>").value = sId;
            document.getElementById("<%= hdh_rename_image.ClientID %>").value = txt;
            document.getElementById("<%= hdh_old_rename_image.ClientID %>").value = txt;
       
            __doPostBack("", "")
        
        }
    }
    //XOA TEP TIN
    function delete_image2() {
        try {
            
            var txt =document.getElementById("<%= hdh_curent_image.ClientID %>").value; 
           
            if (txt.length == 0) {

                alert('Tên ảnh không được để trống');

            }
            else {

               // alert(txt);
                //  Span45
      

                __doPostBack("", "")

            }
        } catch (ex)
        {alert('a'+ex);}
    }
    
   </script>
      <script src="../App_Themes/mymenu.js"></script>
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

