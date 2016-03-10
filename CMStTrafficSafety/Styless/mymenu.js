var $j = jQuery.noConflict();
$j(window).load(function() {
    $j(document).ready(function() {

        $j('.Node a').contextMenu({ menu: "myMenu2" },
                 function(action, el, pos) {
                     //                                        alert(
                     //                                             "Action: " + action + "\n\n" +
                     //                                              "Element ID: " + $j(el).attr("href") + "\n\n" +
                     //                                                 "X: " + pos.x + " Y:" + pos.y + " (relative to element)\n\n" +
                     //                                                     "X: " + pos.docX + "Y: " + pos.docY + " (relative to document)"
                     //                                           );
                     var xxx = $j(el).attr("href");
                     switch (action) {
                         case "edit":
                             try {
                                 window_create_sub_folder(xxx);
                             }
                             catch (ex) {
                                 alert(ex);
                             }
                             break;
                         case "rename":
                             try {
                                 window_rename_folder(xxx);
                             }
                             catch (ex) {

                             }
                             break;
                         case "delete":
                             delete_folder(xxx);
                             break;
                         default:
                             break;

                     }
                 })

    });
});

/*======================*/

$j(window).unload(function() {
    $j(document).ready(function() {

        $j('.Node').contextMenu({ menu: "myMenu2" },
                 function(action, el, pos) {
                     var xxx = $j(el).attr("href");
                     //                                          alert(
                     //                                            "Action: " + action + "\n\n" +
                     //                                               "Element ID: " + $j(el).attr("href") + "\n\n" +
                     //                                                 "X: " + pos.x + " Y:" + pos.y + " (relative to element)\n\n" +
                     //                                                     "X: " + pos.docX + "Y: " + pos.docY + " (relative to document)"
                     //                                          );
                     switch (action) {
                         case "edit":
                             window_create_sub_folder(xxx);

                             break;
                         case "rename":
                             try {
                                 window_rename_folder(xxx);
                             }
                             catch (ex) {

                             }
                             break;
                         case "delete":
                             delete_folder(xxx);
                             break;
                         default:
                             break;

                     }
                 })

    });
});

//=======================================================

function GetSelectedNode() {

}

function window_create_sub_folder(xxx) {

   // var xx = var data = eval('<%=PictureTree.ClientID %>_Data');
   // var xxx = document.getElementById('<%=PictureTree.ClientID %>_SelectedNode').value
    // alert(xxx);
    $("#dialog-message").dialog({
        modal: true,
        draggable: true,
        resizable: false,
        position: {
            my: "center",
            at: "center",
            of: window
        },
        show: 'blind',
        hide: 'blind',
        width: 300,
        dialogClass: 'ui-dialog-osx',
        buttons: {
            "Tạo mới": function() {
            createfolder(xxx);
               

                
            }
            ,
            "Hủy bỏ": function() {
                $(this).dialog("close");
            }
        }
    });
    
//    alert('a');
//    jQuery('#basic-modal-content').leanModal();
}

function window_rename_folder(xxx) {
    var x1 = xxx;

    var split;

    split = x1.split("http://");
    var len;
    len = split.length;
    var url_real;
    url_real = split[len - 1];
   
    url_real = url_real.replace("/')", "");

   // alert('url_real='+url_real);

    var _lenlen;

    _lenlen = url_real.length;
    
    
    var split2;
    split2 = url_real.split("/")
    
    var len2;
    len2 = split2.length;
    var real_url_2;
    real_url_2 = split2[len2 - 1];
   // alert('real_url_2=' + real_url_2);
    var res = url_real.substring(0, _lenlen - real_url_2.length);
   // alert('res=' + res);
    $("#dialog-message-rename").dialog({
        modal: true,
        draggable: true,
        resizable: false,
        position: {
            my: "center",
            at: "center",
            of: window
        },
        show: 'blind',
        hide: 'blind',
        width: 300,
        dialogClass: 'ui-dialog-osx',
        buttons: {
        "Sửa thư mục": function() {

        rename_folder(url_real, real_url_2,res);



            }
            ,
            "Hủy bỏ": function() {
                $(this).dialog("close");
            }
        }
    });

    //    alert('a');
    //    jQuery('#basic-modal-content').leanModal();
}

function delete_folder(xxx) {

    var x1 = xxx;
    var split;

    split = x1.split("http://");
    var len;
    len = split.length;
    var url_real;
    url_real = split[len - 1];

    url_real = url_real.replace("/')", "");

    // alert('url_real='+url_real);

    var _lenlen;

    _lenlen = url_real.length;


    var split2;
    split2 = url_real.split("/")

    var len2;
    len2 = split2.length;
    var real_url_2;
    real_url_2 = split2[len2 - 1];


//    alert(url_real);
//    alert(real_url_2);
    delete_folder_XXX(url_real, real_url_2);
   


}