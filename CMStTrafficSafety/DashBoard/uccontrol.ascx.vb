Imports System.IO

Partial Class DashBoard_uccontrol
    Inherits System.Web.UI.UserControl

#Region "DECLARE"

    Dim root_folder As String

    Dim _cms As CMS_SHARED

    Dim newdir As String
    Private Root As DirectoryInfo
   
#End Region

#Region "CONSTRUCTOR"
    Public Sub New()
        root_folder = "../_SHARED_FILES/images/"
    End Sub
#End Region

#Region "METHODS"
    Private Sub PopulateTree()
        PictureTree.Nodes.Clear()
        newdir = System.Web.HttpContext.Current.Server.MapPath(root_folder)

        Dim root As TreeNode = AddNodeAndDescendents(root_folder, Nothing, "images")

        PictureTree.Nodes.Add(root)
        '  PictureTree.Attributes.Add("oncontextmenu", "return OnTreeClick(event)")

    End Sub
    Private Function AddNodeAndDescendents(ByVal irootfolder As String, _
                                           ByVal parentNode As TreeNode, _
                                           ByVal folder_name As String) As TreeNode
        'Add the TreeNode, displaying the folder's name and storing the full path to the folder as the value...

        Dim Dirs() As DirectoryInfo
        Dim _Count As Integer
        Dim i As Integer

        Dim sub_folder_name As String
        Dim sub_folder_path As String

        newdir = System.Web.HttpContext.Current.Server.MapPath(irootfolder)
        ' Me.Page.Response.Write("folder_name=" + folder_name + "</br>")
        Dim node As New TreeNode(folder_name, irootfolder)

        Root = New DirectoryInfo(newdir)

        Dirs = Root.GetDirectories("*.*")

        _Count = 0

        If Dirs.Length > 0 Then
            _Count = Dirs.Length
        Else
            _Count = 0
        End If
        i = 0
        'Me.Page.Response.Write("_Count=" + _Count.ToString + "</br>")
        If _Count > 0 Then


            While i < _Count

                sub_folder_name = Dirs(i).ToString

                sub_folder_path = System.Web.HttpContext.Current.Server.MapPath(irootfolder + sub_folder_name + "/")


                If cl_shareds.check_folder_or_file(sub_folder_path) = False Then
                    Try
                        'Me.Page.Response.Write("irootfolder=" + irootfolder.ToString + "</br>")
                        'Me.Page.Response.Write("sub_folder_name=" + sub_folder_name.ToString + "</br>")
                        Dim child As TreeNode = AddNodeAndDescendents(irootfolder + sub_folder_name + "/", node, sub_folder_name)

                        ' If child IsNot Nothing = True Then

                        node.ChildNodes.Add(child)

                        ' End If

                    Catch ex As Exception

                        Me.Page.Response.Write(ex.ToString)

                    End Try
                End If
                'Me.Page.Response.Write(i.ToString + "</br>")
                i = i + 1
            End While
            Return node     'Return the new TreeNode
        ElseIf _Count = 0 Then
            sub_folder_name = folder_name
            sub_folder_path = System.Web.HttpContext.Current.Server.MapPath(irootfolder + sub_folder_name + "/")
            ' Me.Page.Response.Write(irootfolder + "</br>")
            '  Dim child As TreeNode = AddNodeAndDescendents(irootfolder + "/", node, sub_folder_name)

            ' node.ChildNodes.Add(child)


            Return node

        End If



    End Function
#End Region

#Region "PAGE METHODS"

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        lit_title.Text = "<b>Tên mới</b>"
        lit_title_rename_folder.Text = "<b>Đổi tên</b>"
        lit_confirm_delete.Text = "Bạn có chắc muốn xóa thư mục " + Chr(34)
        lit_rename_image_title.Text = "<b>Đổi tên</b>"
        lit_delete_image_content.Text = "Bạn có chắc muốn xóa ảnh " + Chr(34)
        'Thông tin
        lit_delete_title.Text = "<b>Thông tin</b>"
        If Me.Page.IsPostBack = False Then
            PopulateTree()
            Me.PictureTree.Nodes(0).Selected = True
            hdh_parent_folder.Value = Me.PictureTree.Nodes(0).Value.ToString
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

      

        Dim straction As String = hdh_action.Value.ToString
        If straction IsNot Nothing = True Then
            Dim strxxx As String = straction
            'Me.Page.Response.Write(strxxx)
            Select Case strxxx
                Case "add"
                    func_create_folder()
                    Exit Select

                Case "edit"
                    func_edit_folder()
                    Exit Select
                Case "delete"
                    func_delete_folder()
                    Exit Select
                Case "selected"
                    func_images_selected()
                    Exit Select
                Case "cancel"
                    Exit Select
                Case "download"
                    donwload_file()
                    Exit Select
                Case "delete_image", "delete2"
                    func_image_deleted()
                    Exit Select

                Case "edit_image"
                    func_renam_image()
                    Exit Select


            End Select

        Else

        End If

    End Sub
#Region "CAC HAM LAM VIEC VOID FOLDER VA TEP TIN"
    ''' <summary>
    ''' HAM DOWNLOAD FILE
    ''' </summary>
    ''' <remarks></remarks>
    Sub donwload_file()
        'LAY TEN THU MUC DANG LAM VIEC
        Dim str_selected_folder As String = ""
        Dim str_s1() As String
        Dim str_val As String
        Try
            str_selected_folder = hdh_parent_folder.Value.ToString

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
            ' Me.Page.Response.Write(str_val.ToString)
            Dim path_selected_folder As String = System.Web.HttpContext.Current.Server.MapPath(str_val)
            'XONG VIEC LAY TEN THU MUC


            '  Me.Page.Response.Write(str_val.ToString)
            Dim current_image As String = hdh_curent_image.Value.ToString.Trim
            '  Me.Page.Response.Write(hdh_curent_image.Value.ToString)
            '  hdh_curent_image
            'BEGIN DOWNLOAD FILE

            Dim filePath As String = System.Web.HttpContext.Current.Server.MapPath(str_val + current_image)
            Dim file As New FileInfo(filePath)

            Response.Clear()

            Response.ClearHeaders()

            Response.ClearContent()

            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name)

            Response.AddHeader("Content-Length", file.Length.ToString())

            Response.ContentType = "text/plain"

            Response.Flush()

            Response.TransmitFile(file.FullName)

            Response.[End]()



            'END DOWNLOAD FILE
        End If
    End Sub

    ''' <summary>
    ''' function selected image
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub func_images_selected()

        '../_SHARED_FILES/images/\\../_SHARED_FILES/images/ANH_VIDEOS/\\../_SHARED_FILES/images/ANH_VIDEOS/thumuc2/
        Dim str_selected_folder As String = ""
        Dim str_s1() As String
        Dim str_val As String
        Try
            str_selected_folder = hdh_parent_folder.Value.ToString

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
            ' Me.Page.Response.Write(str_val.ToString)
            Dim path_selected_folder As String = System.Web.HttpContext.Current.Server.MapPath(str_val)

            Dim curentfolderdirectory As DirectoryInfo
            Dim sub_folder() As DirectoryInfo
            Dim file_name() As FileInfo
            curentfolderdirectory = New DirectoryInfo(path_selected_folder)

            sub_folder = curentfolderdirectory.GetDirectories

            ' Me.Page.Response.Write(sub_folder.Length.ToString)
            'LIST ALL FOLDER
            Dim i, count As Integer
            i = 0

            count = sub_folder.Length
            Dim folder_name, folder_path As String
            Dim str_html As String = ""

            If _cms IsNot Nothing = True Then

            Else
                _cms = New CMS_SHARED
            End If

            str_html += "<ul class='ui-listview' id=""ui-listview"">"
            While i < count

                folder_path = sub_folder(i).FullName.ToString
                folder_name = sub_folder(i).Name.ToString
                'Me.Page.Response.Write(folder_name.ToString + "</br>")
                'Me.Page.Response.Write(folder_path.ToString + "</br>")
                str_html += "<li id='li" + i.ToString + "' style='width:150px;height:150px;' class='normal' onclick='javascript:change_class(""li" + i.ToString + """,""normal"",""selectedli"",""" + folder_name + """,""" + folder_path + """)'>"
                str_html += "<a class='ui-btn'>"
                str_html += "<img src='" + _cms.CMS_APP_NAME + "DashBoard/Scripts/images/1445346519_icon-96-folders.png" + "' style='width:100px;padding-top:10px;' class='ui-li-thumb' />"
                str_html += "</a>"
                str_html += "<div class=""ckf-file-desc ui-bar-a"" draggable=""true""><h2 title=""countryside.jpg"">" + folder_name + "</h2></div>"
                str_html += "</li>"
                i = i + 1
            End While

            'LIST ALL FILE
            file_name = curentfolderdirectory.GetFiles

            Dim j, jlen As Integer

            j = 0

            jlen = file_name.Length
            Dim file_names As String
            Dim file_paths As String
            Dim root_folder As String = str_val.Replace("../", "")
            If jlen > 0 Then
                While j < jlen

                    file_paths = file_name(j).FullName.ToString.Trim
                    file_names = file_name(j).Name.ToString.Trim
                    'Me.Page.Response.Write(folder_name.ToString + "</br>")
                    'Me.Page.Response.Write(folder_path.ToString + "</br>")
                    If file_names.Equals("web.config", StringComparison.CurrentCultureIgnoreCase) = False Then
                        str_html += "<li id='li" + j.ToString + "' style='width:150px;height:150px;' class='normal' onclick='javascript:change_class_images(""li" + j.ToString + """,""normal"",""selectedli"",""" + file_names + """,""" + file_paths + """)'>"
                        str_html += "<a class='ui-btn'>"
                        str_html += "<img src='" + _cms.CMS_APP_NAME + root_folder + file_names + "' style='width:100px; padding-top:20px;' class='ui-li-thumb' />"
                        str_html += "</a>"
                        str_html += "<div class=""ckf-file-desc ui-bar-a"" draggable=""true""><h2 title=""" + file_names + """>" + file_names + "</h2></div>"
                        str_html += "</li>"
                    End If
                    j = j + 1
                End While
            End If
            str_html += "</ul>"
            Me.clt_lite_ContentImage.Text = str_html
        End If
    End Sub


    Private Sub func_image_deleted()
        Dim str_selected_folder As String = ""
        Dim str_s1() As String
        Dim str_val As String
        Try
            str_selected_folder = hdh_parent_folder.Value.ToString

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

            Dim curentimage As String = hdh_curent_image.Value.ToString

            Dim curen_image As String = System.Web.HttpContext.Current.Server.MapPath(str_val + curentimage)
        
            ' Me.Page.Response.Write(curen_image)
            Dim fi As New FileInfo(curen_image)
            If fi.Exists Then
                fi.Delete()
                func_images_selected()

            End If


            ' Me.Page.Response.Write(str_val.ToString + "</br>")


        End If
    End Sub

    ''' <summary>
    ''' HAM TAO MOI FOLDER
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub func_create_folder()
        'PROCESS PARENTFOLDER

        Dim str_parent_folder As String
        Dim str_s1() As String
        Dim str_val, str_val2 As String
        Dim str_s2() As String
        Dim new_folder_path As String
        Dim sub_folder_name As String
        Try
            str_parent_folder = hdh_parent_folder.Value.ToString

        Catch ex As Exception
            str_parent_folder = ""
        End Try

        sub_folder_name = Me.hdh_new_folder.Value.ToString.Trim
        If str_parent_folder.Length > 0 Then
            Try
                str_s1 = str_parent_folder.Split(",")
            Catch ex As Exception
                str_s1 = Nothing
            End Try
            str_val = str_s1(str_s1.Length - 1).ToString.Trim
            'Me.Page.Response.Write("parent-folder" + str_val + "</br>")
            'parent-folder's../_SHARED_FILES/images/\\../_SHARED_FILES/images/ANH_VIDEOS/')
            Dim myDelims As String() = New String() {"\\"}
            Try
                str_s2 = str_val.Split(myDelims, StringSplitOptions.None)
            Catch ex As Exception
                str_s2 = Nothing
            End Try
            If str_s2 IsNot Nothing = True Then
                Try
                    str_val2 = str_s2(str_s2.Length - 1).ToString.Trim
                    str_val2 = str_val2.Replace("')", "")

                    If str_val2.Equals("'s../_SHARED_FILES/images/".ToLower, StringComparison.CurrentCultureIgnoreCase) = False Then

                        new_folder_path = System.Web.HttpContext.Current.Server.MapPath(str_val2)

                        Dim new_tracking As New Tracking
                        Dim int_val As Integer
                        int_val = new_tracking.create_folder(new_folder_path, sub_folder_name)
                       
                        If int_val > 0 Then
                            _cms = New CMS_SHARED

                            Me.Page.Response.Redirect(_cms.CMS_APP_NAME + "dashboard/quanlyanh.aspx")
                        End If
                    Else
                        Try

                      

                            str_val2 = str_val2.Replace("'s..", "..")
                            new_folder_path = System.Web.HttpContext.Current.Server.MapPath(str_val2)
                            'Me.Page.Response.Write(new_folder_path.ToString)
                            Dim new_tracking As New Tracking
                            Dim int_val As Integer
                            int_val = new_tracking.create_folder(new_folder_path, sub_folder_name)

                            If int_val > 0 Then
                                _cms = New CMS_SHARED

                                Me.Page.Response.Redirect(_cms.CMS_APP_NAME + "dashboard/quanlyanh.aspx")
                            End If
                        Catch ex As Exception
                            Me.Page.Response.Write(ex.ToString)
                        End Try
                    End If

                  



                Catch ex As Exception
                    Me.Page.Response.Write(ex.ToString)
                End Try


            Else

            End If

        End If



        'Me.Page.Response.Write("parent-folder" + hdh_parent_folder.Value.ToString + "</br>")
        'Me.Page.Response.Write("hdh_new_folder-folder" + hdh_new_folder.Value.ToString + "</br>")

    End Sub

    ''' <summary>
    ''' HAM DOI TEN FOLDER
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub func_edit_folder()
        'PROCESS PARENTFOLDER

        Dim str_old_folder As String
        Dim str_s1() As String
        Dim str_val, str_val2 As String
        Dim str_s2() As String
        Dim new_folder_path, old_folder_path As String
        Dim sub_folder_name As String
        Try
            str_old_folder = hdh_old_rename_folder.Value.ToString

        Catch ex As Exception
            str_old_folder = ""
        End Try

        sub_folder_name = Me.hdh_rename_folder.Value.ToString.Trim
        If str_old_folder.Length > 0 Then
            Try
                str_s1 = str_old_folder.Split(",")
            Catch ex As Exception
                str_s1 = Nothing
            End Try
            str_val = str_s1(str_s1.Length - 1).ToString.Trim
            'Me.Page.Response.Write("parent-folder" + str_val + "</br>")
            'parent-folder's../_SHARED_FILES/images/\\../_SHARED_FILES/images/ANH_VIDEOS/')
            Dim myDelims As String() = New String() {"\\"}
            Try
                str_s2 = str_val.Split(myDelims, StringSplitOptions.None)
            Catch ex As Exception
                str_s2 = Nothing
            End Try
            If str_s2 IsNot Nothing = True Then



                Try
                    str_val2 = str_s2(str_s2.Length - 1).ToString.Trim
                    str_val2 = str_val2.Replace("')", "")
                    ' Me.Page.Response.Write(str_val2)
                    old_folder_path = System.Web.HttpContext.Current.Server.MapPath(str_val2)
                    Me.Page.Response.Write(old_folder_path + "</br>")
                    Dim strxxx() As String
                    Dim parent_folder As String
                    Dim oldfolder As String

                    Try
                        strxxx = old_folder_path.Split("\")
                    Catch ex As Exception
                        strxxx = Nothing
                    End Try
                    If strxxx IsNot Nothing = True Then
                        oldfolder = strxxx(strxxx.Length - 2).ToString
                        ' Me.Page.Response.Write(oldfolder + "</br>")
                    Else
                        oldfolder = ""
                    End If
                    If oldfolder.Length > 0 Then

                        parent_folder = old_folder_path.Replace(oldfolder + "\", "")
                        '  Me.Page.Response.Write(parent_folder + "</br>")
                        new_folder_path = parent_folder + sub_folder_name
                        System.IO.Directory.Move(old_folder_path, new_folder_path)
                    End If

                    _cms = New CMS_SHARED

                    Me.Page.Response.Redirect(_cms.CMS_APP_NAME + "dashboard/quanlyanh.aspx")




                Catch ex As Exception

                End Try


            Else

            End If

        End If



        'Me.Page.Response.Write("parent-folder" + hdh_parent_folder.Value.ToString + "</br>")
        'Me.Page.Response.Write("hdh_new_folder-folder" + hdh_new_folder.Value.ToString + "</br>")

    End Sub

    ''' <summary>
    ''' HAM XOA FOLDER
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub func_delete_folder()
        ' Me.Page.Response.Write("sadsadas")
        'PROCESS PARENTFOLDER

        Dim str_parent_folder As String
        Dim str_s1() As String
        Dim str_val, str_val2 As String
        Dim str_s2() As String
        Dim new_folder_path As String
        Dim sub_folder_name As String
        Try
            str_parent_folder = hdh_parent_folder.Value.ToString

        Catch ex As Exception
            str_parent_folder = ""
        End Try

        sub_folder_name = Me.hdh_delete_folder.Value.ToString.Trim
        If str_parent_folder.Length > 0 Then
            Try
                str_s1 = str_parent_folder.Split(",")
            Catch ex As Exception
                str_s1 = Nothing
            End Try
            str_val = str_s1(str_s1.Length - 1).ToString.Trim

            Dim myDelims As String() = New String() {"\\"}
            Try
                str_s2 = str_val.Split(myDelims, StringSplitOptions.None)
            Catch ex As Exception
                str_s2 = Nothing
            End Try
            If str_s2 IsNot Nothing = True Then
                Try
                    str_val2 = str_s2(str_s2.Length - 1).ToString.Trim
                    str_val2 = str_val2.Replace("')", "")
                    ' Me.Page.Response.Write(str_val2)
                    new_folder_path = System.Web.HttpContext.Current.Server.MapPath(str_val2)
                    ' Me.Page.Response.Write(new_folder_path)

                    DeleteDirectory(new_folder_path)
                    _cms = New CMS_SHARED
                    Me.Page.Response.Redirect(_cms.CMS_APP_NAME + "dashboard/quanlyanh.aspx")



                Catch ex As Exception

                End Try


            Else

            End If

        End If


    End Sub

    Public Sub PictureTree_TreeNodePopulate(ByVal sender As Object, ByVal e As TreeNodeEventArgs)

    End Sub

    ''' <summary>
    ''' XOA THU MUC
    ''' </summary>
    ''' <param name="path"></param>
    ''' <remarks></remarks>
    Private Sub DeleteDirectory(ByVal path As String)
        If Directory.Exists(path) Then
            'Delete all files from the Directory
            For Each filepath As String In Directory.GetFiles(path)
                File.Delete(filepath)
            Next
            'Delete all child Directories
            For Each dir As String In Directory.GetDirectories(path)
                DeleteDirectory(dir)
            Next
            'Delete a Directory
            Directory.Delete(path)
        End If
    End Sub


    Private Sub func_renam_image()
        'Me.Page.Response.Write(hdh_curent_image.Value.ToString + "</br>")
        'Me.Page.Response.Write(hdh_rename_image.Value.ToString + "</br>")

        Dim str_selected_folder As String = ""
        Dim str_s1() As String
        Dim str_val As String
        Try
            str_selected_folder = hdh_parent_folder.Value.ToString

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
            Try
                Dim imagename_new As String = hdh_curent_image.Value.ToString
                Dim imagename_old As String = hdh_old_rename_image.Value.ToString

                Dim curen_image As String = System.Web.HttpContext.Current.Server.MapPath(str_val + imagename_old)
                Dim old_image As String = System.Web.HttpContext.Current.Server.MapPath(str_val + imagename_new)

                'Me.Page.Response.Write(old_image + "</br>")
                'Me.Page.Response.Write(curen_image + "</br>")

                Dim fi As New FileInfo(old_image)
                If fi.Exists Then
                    fi.MoveTo(curen_image)
                    func_images_selected()
                    ' Response.Write("<script>document.forms[0].submit();</script>")
                End If

            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try
        End If



    End Sub
#End Region

#End Region



    Protected Sub btn_action_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_action.Click

    End Sub

    Protected Sub PictureTree_SelectedNodeChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles PictureTree.SelectedNodeChanged

    End Sub
End Class
