<%@ Control Language="VB" AutoEventWireup="false" CodeFile="CListControl.ascx.vb" Inherits="tTrafficSafety_30_Album_anh_anh_CListControl" %>
<div id="divListControl" runat="server" style="BORDER-RIGHT: gray thin groove; BORDER-TOP: gray thin groove; OVERFLOW: auto; BORDER-LEFT: gray thin groove; WIDTH: 100px; BORDER-BOTTOM: gray thin groove; HEIGHT: 100px;font-size: 10px;font-family:Verdana;COLOR: #2D2D2D;">
        
        </div>
        <input id="selem" type="hidden" runat="server" />
   <script type="text/javascript">
function mouseoverelem(elemid)
{
    var elem = document.getElementById(elemid);
    var selected = document.getElementById("<%=selem.ClientID %>");
    var seltd = document.getElementById(selected.value);
	
	if(elem && elem != seltd){
	//alert("setcolor:elem=" + elem + "selected=" + selected);
	elem.style.background = 'LightGreen';
	elem.style.cursor='default';
    }
}
function mouseoutelem(elemid)
{
var elem = document.getElementById(elemid);
    var selected = document.getElementById("<%=selem.ClientID %>");
    var seltd = document.getElementById(selected.value);
	
	if(elem && elem != seltd){
	//alert("setcolor:elem=" + elem + "selected=" + selected);
	elem.style.background = 'white';
	elem.style.cursor='default';
    }
}
function select(elemid,sid,cid,iselemid) {
    try {

    var elem = document.getElementById(elemid);
  //  alert(elemid);
    var selected = document.getElementById("<%=selem.ClientID %>");
    var seltd;
    if(selected.value != "")
        seltd = document.getElementById(selected.value);
    
	if(!elem)
		return;
    var pbRequired = false;
    if(seltd && elem != seltd){ // unselect the selected element
    seltd.style.background = "white"
    seltd.style.color = "black";
    }
    // select the element
	elem.style.background = "blue"
	elem.style.color = "white";
	//selected.value = elemid;
	document.getElementById(iselemid).value = elemid;
}
catch (ex) {
    alert(ex);

} 
}
//alert("going to select" + document.getElementById("<%=selem.ClientID %>").value);
//var s = document.getElementById("<%=selem.ClientID %>").value;
//document.getElementById("<%=selem.ClientID %>").value = ""; 
//select(s);

</script>