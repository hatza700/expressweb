Imports System.IO

Partial Class DashBoard_Uploadmutilfile
    Inherits System.Web.UI.Page
    Protected Sub Upload_Files(ByVal sender As Object, ByVal e As EventArgs)

        ' CHECK IF ANY FILE HAS BEEN SELECTED.
        If fileUpload.HasFile Then
            Dim iUploadedCnt As Integer = 0
            Dim iFailedCnt As Integer = 0
            Dim hfc As HttpFileCollection = Request.Files

            lblFileList.Text = "Select <b>" & hfc.Count & "</b> file(s)"

            If hfc.Count <= 100 Then             ' 10 FILES RESTRICTION.
                For i As Integer = 0 To hfc.Count - 1
                    Dim hpf As HttpPostedFile = hfc(i)
                    If hpf.ContentLength > 0 Then

                        Dim rootfolder As String = folder_contain_image()

                        Dim _cms As New CMS_SHARED
                        Dim root As String

                        If Not File.Exists(Server.MapPath(rootfolder) & _
                                Path.GetFileName(hpf.FileName)) Then

                            Dim objDir As New DirectoryInfo(Server.MapPath(rootfolder))

                            Dim objFI As FileInfo() = _
                                objDir.GetFiles(Replace(Path.GetFileName(hpf.FileName), _
                                    Path.GetExtension(hpf.FileName), "") & ".*")
                            If objFI.Length > 0 Then
                                ' CHECK IF FILE WITH SAME NAME EXISTS (IGNORING THE EXTENTIONS).
                                For Each file As FileInfo In objFI
                                    If Replace(objFI(0).Name, Path.GetExtension(objFI(0).Name), "") = _
                                        Replace(Path.GetFileName(hpf.FileName), _
                                            Path.GetExtension(hpf.FileName), "") Then

                                        iFailedCnt = iFailedCnt + 1
                                        Exit For
                                    End If
                                Next
                            Else
                                ' SAVE THE FILE IN A FOLDER.
                                hpf.SaveAs(Server.MapPath(rootfolder) & _
                                        Path.GetFileName(hpf.FileName))
                                iUploadedCnt = iUploadedCnt + 1
                            End If
                        End If
                    End If
                Next i
                lblUploadStatus.Text = "<b>" & iUploadedCnt & "</b> file đã được upload."
                lblFailedStatus.Text = "<b>" & iFailedCnt & _
                    "</b> file trùng tên không được upload."
            Else
                lblUploadStatus.Text = "Giới hạn là 10 file."
            End If
        Else
            lblUploadStatus.Text = "Không có file nào được chọn."
        End If
    End Sub

    Private Function folder_contain_image() As String
        Dim strx As String = ""

        Dim str_selected_folder As String = ""
        Dim str_s1() As String
        Dim str_val As String
        Try
            str_selected_folder = hdh_curent_folder.Value.ToString
            ' Me.Page.Response.Write(str_selected_folder)
        Catch ex As Exception
            str_selected_folder = ""
        End Try
        If str_selected_folder.Length > 0 Then
            Dim myDelims As String() = New String() {"\\"}
            Try
                str_s1 = str_selected_folder.Split(myDelims, StringSplitOptions.None)
            Catch ex As Exception
                str_s1 = Nothing
            End Try

            str_val = str_s1(str_s1.Length - 1).ToString.Trim
            strx = str_val
        End If
        Return strx
    End Function
End Class
