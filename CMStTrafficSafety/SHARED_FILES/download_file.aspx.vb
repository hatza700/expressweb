
Partial Class SHARED_FILES_download_file
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim filename As String
        Dim Filpath As String

        '   string filename = lnkfilepath.Text;
        'string Filpath = Server.MapPath("~/Attachments/" + filename);
        'DownLoad(Filpath);     }
        'public void DownLoad(string FName){ 
        'string path = FName;  
        'System.IO.FileInfo file = new System.IO.FileInfo(path);   
        'if (file.Exists)  {   
        'Response.Clear();  
        'Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);                         Response.AddHeader("Content-Length", file.Length.ToString()); 
        'Response.ContentType = "application/octet-stream"; // download […]

        If Request.QueryString("file_name") IsNot Nothing = True Then
            filename = Request.QueryString("file_name").ToString.Trim
        Else
            filename = ""
        End If

        Try
            Filpath = Server.MapPath("../" + filename)
            downloadfile(Filpath, filename)
        Catch ex As Exception
            Me.Page.Response.Write(ex.ToString)
        End Try

    End Sub

    Private Sub downloadfile(ByVal FName As String, ByVal xname As String)
        Dim _file As System.IO.FileInfo
        'Me.Page.Response.Write(FName.ToString)
        _file = New System.IO.FileInfo(FName)
        If (_file.Exists) Then

            Dim response As System.Web.HttpResponse = System.Web.HttpContext.Current.Response
            response.ClearContent()
            response.Clear()
            response.ContentType = "text/plain"
            response.AddHeader("Content-Disposition", "attachment; filename=" + _file.Name + ";")
            response.TransmitFile(Server.MapPath(xname))
            response.Flush()
            response.[End]()
            response.Write("<script>window.close();</script>")
            ' Response.Clear()
            'Response.AddHeader("Content-Disposition", "attachment; filename=" + _file.Name)                   Response.AddHeader("Content-Length", file.Length.ToString()); 
            ' Response.ContentType = "application/octet-stream"
        Else
            '  Me.Page.Response.Write("no".ToString)
        End If
    End Sub

End Class
