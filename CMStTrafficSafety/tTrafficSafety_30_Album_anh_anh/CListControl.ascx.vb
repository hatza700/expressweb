Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Collections.Generic





'=======================================================
'Service provided by Telerik (www.telerik.com)
'Conversion powered by NRefactory.
'Twitter: @telerik
'Facebook: facebook.com/telerik
'=======================================================
Partial Class tTrafficSafety_30_Album_anh_anh_CListControl
    Inherits System.Web.UI.UserControl
 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            Try

          
                'ALO
                Dim strx As String = ""
                Dim sid As String
                Dim cid As String

                cid = Me.ClientID.ToString.Trim

                sid = Me.ID.ToString.Trim

                strx += "function select(elemid, sid,cid) {" + vbCrLf
                strx += "    //MyListControl1" + vbCrLf


                strx += " try {" + vbCrLf
                strx += "if (sid) {" + vbCrLf
                strx += "  var ids = document.getElementById(""<%=selem.ClientID %>"");" + vbCrLf
                strx += "  if (sid == 'MyListControl1') {" + vbCrLf
                strx += "    var x = String(ids.id);" + vbCrLf
                strx += "    alert(x);" + vbCrLf
                strx += "  if (x.indexOf('MyListControl1') != -1) {" + vbCrLf
                strx += "    alert('1');" + vbCrLf
                strx += " var elem = document.getElementById(elemid);" + vbCrLf
                strx += " //  alert(elemid);" + vbCrLf
                strx += " var selected = document.getElementById(""<%=selem.ClientID %>"");" + vbCrLf
                strx += " var seltd;" + vbCrLf
                strx += " if (selected.value != "")" + vbCrLf
                strx += "     seltd = document.getElementById(selected.value);" + vbCrLf

                strx += " If (!elem) Then" + vbCrLf
                strx += "        return;" + vbCrLf
                strx += "  var pbRequired = false;" + vbCrLf
                strx += "  if (seltd && elem != seltd) { // unselect the selected element" + vbCrLf
                strx += "seltd.style.background = ""white""" + vbCrLf
                strx += "      seltd.style.color = ""black"";" + vbCrLf
                strx += " }" + vbCrLf
                strx += " // select the element" + vbCrLf
                strx += " elem.style.background = ""blue""" + vbCrLf
                strx += "           elem.style.color = ""white"";" + vbCrLf
                strx += "           selected.value = elemid;" + vbCrLf
                strx += "      }" + vbCrLf
                strx += "Else" + vbCrLf
                strx += "         { alert('2'); }" + vbCrLf
                strx += "    }" + vbCrLf
                strx += "     else if (sid == 'ListBox2') {" + vbCrLf
                strx += "    if (String(ids.id).indexOf(""ListBox2"") != -1) {"

                strx += "        var elem = document.getElementById(elemid);" + vbCrLf
                strx += "        //  alert(elemid);" + vbCrLf
                strx += "        var selected = document.getElementById(""<%=selem.ClientID %>"");"
                strx += "        var seltd;" + vbCrLf
                strx += "        if (selected.value != "")" + vbCrLf
                strx += "            seltd = document.getElementById(selected.value);" + vbCrLf

                strx += " If (!elem) Then" + vbCrLf
                strx += "            return;" + vbCrLf
                strx += "       var pbRequired = false;" + vbCrLf
                strx += "        if (seltd && elem != seltd) { // unselect the selected element" + vbCrLf
                strx += "seltd.style.background = ""white""" + vbCrLf
                strx += "             seltd.style.color = ""black"";+ vbCrLf"
                strx += "        }" + vbCrLf
                strx += "        // select the element" + vbCrLf
                strx += "  elem.style.background = ""blue"" + vbCrLf"
                strx += "       elem.style.color = ""white"";+ vbCrLf"
                strx += "        selected.value = elemid;" + vbCrLf
                strx += "  }" + vbCrLf
                strx += "    }" + vbCrLf



                strx += "   }" + vbCrLf
                strx += " }" + vbCrLf
                strx += " catch (ex) {" + vbCrLf
                strx += "     alert(ex);" + vbCrLf

                strx += "} " + vbCrLf
                strx += "}" + vbCrLf
                strx += "//alert(""going to select"" + document.getElementById(""<%=selem.ClientID %>"").value);" + vbCrLf
                strx += "var s = document.getElementById(""<%=selem.ClientID %>"").value;" + vbCrLf
                strx += "//document.getElementById(""<%=selem.ClientID %>"").value = "";" + vbCrLf
                strx += "//select(s);" + vbCrLf + vbCrLf


                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Testing" + sid, _
        strx, True)

            Catch ex As Exception
                Dim strx As String = "alert( '" + ex.ToString + "')"
                Dim sid As String = Me.ID.ToString
                Dim cid As String

                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Testing" + sid, _
     strx, True)
            End Try
        End If

    End Sub

    Public Overrides Sub RenderControl(ByVal writer As HtmlTextWriter)
        RenderCustomControl()
        MyBase.RenderControl(writer)
    End Sub
    Public Sub RenderCustomControl()
        Dim HtmlList As [String] = [String].Empty
        Dim sid As String
        Dim cid As String
        Dim iselemid As String
        cid = Me.ClientID.ToString.Trim
        sid = Me.ID.ToString.Trim
        iselemid = Me.selem.ClientID.ToString.Trim

        Try
            HtmlList = HtmlList + "<TABLE  width=""100%"" bgColor=""white"" border=""0"" cellpadding =""0"" cellspacing=""0"" > <TBODY class=""list"">"

            For i As Integer = 0 To Items.Count - 1
                Dim imgPath As String = Items(i).ImagePath
                HtmlList += String.Format("<tr ID=""tr{0}""" + " onmouseover=""mouseoverelem" + "('tr{0}');"" " + " onmouseout=""mouseoutelem('tr{0}');"" " + " onclick=""select('tr{0}','" + sid + "','" + cid + "','" + iselemid + "');"">", Items(i).Value)
                'HtmlList += "<td width='1%'>"
                'If imgPath <> "" Then
                '    HtmlList += (Convert.ToString("<img src=""") & imgPath) + """>"
                'End If
                'HtmlList += "</td>"

                HtmlList += String.Format("<td style='padding-left:20px;padding-bottom:15px;' ID=""td{0}"" " + "> {1}</td>", Items(i).Value, Items(i).Text)

                For j As Integer = 0 To Items(i).DetailDataItem.Count - 1

                    HtmlList += "<td style='border-left-width:1px'> " + Items(i).DetailDataItem(j) + "</td>"
                Next

                HtmlList += "</tr>"
            Next
            HtmlList = HtmlList + "</tbody></TABLE>"
            divListControl.InnerHtml = HtmlList
        Catch ex As Exception

            HtmlList = HtmlList + "</tbody></TABLE>"
        End Try

        

    End Sub
    Public ReadOnly Property SelectedIndex() As Integer
        Get
            For i As Integer = 0 To Items.Count - 1
                If selem.Value = "tr" + Items(i).Value Then
                    Return i
                End If
            Next


            Return Nothing
        End Get
    End Property
    Public ReadOnly Property SelectedItem() As CListItem
        Get
            For i As Integer = 0 To Items.Count - 1
                If selem.Value = "tr" + Items(i).Value Then
                    Return Items(i)
                End If
            Next
            Return Nothing
        End Get
    End Property
    Public ReadOnly Property SelectedValue() As String
        Get
            If SelectedItem IsNot Nothing Then
                Return SelectedItem.Value
            End If
            Return Nothing
        End Get
    End Property

    Public ReadOnly Property Selected() As Boolean
        Get
            If SelectedItem IsNot Nothing Then
                Return True
            Else
                Return False
            End If
            Return Nothing
        End Get
    End Property

    Public Property Items() As List(Of CListItem)

        Get

            Dim lst As List(Of CListItem) = TryCast(ViewState("MyListItems"), List(Of CListItem))
            If lst Is Nothing Then
                ViewState("MyListItems") = New List(Of CListItem)()
            End If

            Return TryCast(ViewState("MyListItems"), List(Of CListItem))
        End Get
        Set(ByVal value As List(Of CListItem))
            ViewState("MyListItems") = value
        End Set
    End Property
    Public Property Width() As String
        Get
            Return divListControl.Style("Width")
        End Get
        Set(ByVal value As String)
            divListControl.Style("Width") = value
        End Set
    End Property
    Public Property Height() As String
        Get
            Return divListControl.Style("Height")
        End Get
        Set(ByVal value As String)
            divListControl.Style("Height") = value
        End Set
    End Property

    Protected Sub Page_Load1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class

