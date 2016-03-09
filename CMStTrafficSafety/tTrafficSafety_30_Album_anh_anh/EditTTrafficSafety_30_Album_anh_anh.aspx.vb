
' This file implements the code-behind class for EditTTrafficSafety_30_Album_anh_anh.aspx.
' App_Code\EditTTrafficSafety_30_Album_anh_anh.Controls.vb contains the Table, Row and Record control classes
' for the page.  Best practices calls for overriding methods in the Row or Record control classes.


#Region "Imports statements"

Option Strict Off
Imports System
Imports System.Data
Imports System.Collections
Imports System.Collections.Generic
Imports System.ComponentModel

Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports BaseClasses
Imports BaseClasses.Utils
Imports BaseClasses.Utils.StringUtils
Imports BaseClasses.Data
Imports BaseClasses.Data.SqlProvider
Imports BaseClasses.Data.OrderByItem.OrderDir
Imports BaseClasses.Data.BaseFilter
Imports BaseClasses.Data.BaseFilter.ComparisonOperator
Imports BaseClasses.Web.UI.WebControls
Imports System.IO
Imports CMStTrafficSafety.Business
Imports CMStTrafficSafety.Data
Imports AjaxControlToolkit


#End Region



  
Namespace CMStTrafficSafety.UI
  
Partial Public Class EditTTrafficSafety_30_Album_anh_anh
        Inherits BaseApplicationPage
' Code-behind class for the EditTTrafficSafety_30_Album_anh_anh page.
' Place your customizations in Section 1. Do not modify Section 2.
        
#Region "Section 1: Place your customizations here."
    #Region "CUSTOMIZE"

#Region "DECLARE"

        Dim root_folder As String

        Dim _cms As CMS_SHARED

        Dim newdir As String
        Private Root As DirectoryInfo

#End Region

        Sub Button2_OnClick(ByVal sender As Object, ByVal e As EventArgs)

         
        End Sub

        Protected Sub btnDoPost_back_noinhan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDoPost_back_noinhan.Click

        End Sub

        Public Sub New()
            root_folder = "../_SHARED_FILES/images/"
        End Sub

        Private Sub PopulateTree()
            Try

            Catch ex As Exception

            End Try
            ' ddl_thumuc_hethong.Items.Clear()

            newdir = System.Web.HttpContext.Current.Server.MapPath(root_folder)
            Try
                AddNodeAndDescendents(root_folder, Nothing, "images", 0)
            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try



        End Sub
        Dim _cms1 As New CMS_SHARED
        Private Sub AddNodeAndDescendents(ByVal irootfolder As String, _
                                               ByVal parentNode As ListItem, _
                                               ByVal folder_name As String, ByVal idepth As Integer)
            'Add the TreeNode, displaying the folder's name and storing the full path to the folder as the value...

            Dim Dirs() As DirectoryInfo
            Dim _Count As Integer
            Dim i As Integer

            Dim sub_folder_name As String
            Dim sub_folder_path As String

            newdir = System.Web.HttpContext.Current.Server.MapPath(irootfolder)
            ' Me.Page.Response.Write(irootfolder)
            Dim iidepth As Integer
            iidepth = idepth + 1
            'If iidepth

            Dim strxx As String = ""

            Dim _countx As Integer = 0

            While (_countx < iidepth)
                strxx = strxx + "|__"
                _countx = _countx + 1
            End While

            Dim node As New ListItem
            Dim web_irootfolder As String = irootfolder
            web_irootfolder = web_irootfolder.Replace("../", "")
            node.Value = irootfolder
            node.Text = strxx + folder_name
            'Dim node As New TreeNode(folder_name, irootfolder)
            ddl_thumuc_hethong.Items.Add(node)

            Root = New DirectoryInfo(newdir)

            Dirs = Root.GetDirectories("*.*")

            _Count = 0

            If Dirs.Length > 0 Then
                _Count = Dirs.Length
            Else
                _Count = 0
            End If
            i = 0

            If _Count > 0 Then


                While i < _Count

                    sub_folder_name = Dirs(i).ToString

                    sub_folder_path = System.Web.HttpContext.Current.Server.MapPath(irootfolder + sub_folder_name + "/")


                    If cl_shareds.check_folder_or_file(sub_folder_path) = False Then
                        Try

                            Dim child As ListItem
                            child = New ListItem
                            AddNodeAndDescendents(irootfolder + sub_folder_name + "/", child, sub_folder_name, iidepth)

                        Catch ex As Exception

                            Me.Page.Response.Write(ex.ToString)

                        End Try
                    End If

                    i = i + 1
                End While

            ElseIf _Count = 0 Then

                iidepth = 1


            End If



        End Sub

        ''' <summary>
        ''' ADD TAT CA ANH TU BEN TRAI SANG BEN PHAI
        ''' </summary>
        ''' <param name="sender"></param>
        ''' <param name="args"></param>
        ''' <remarks></remarks>
        Protected Sub ButtonAddAll_Click(ByVal sender As Object, ByVal args As EventArgs)
           

            Try
                Dim str_thumuc As String

                str_thumuc = ddl_thumuc_hethong.SelectedValue.ToString

                Dim filename, filepath As String


                'Me.Page.Response.Write(str_thumuc)

                Dim _cms As New CMS_SHARED
                Dim rootds As String
                rootds = str_thumuc '.Replace("../", "")

                While MyListControl1.Items.Count <> 0
               


                    filename = MyListControl1.Items(0).Text
                    filepath = MyListControl1.Items(0).Value
                    Dim cli As New CListItem(filename, filepath, filepath)


                    ListBox2.Items.Add(cli)
                    MyListControl1.Items.RemoveAt(0)

                End While

            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)

            Finally

            End Try

        End Sub

        ''' <summary>
        ''' THEM MOT ANH TU BEN TRAI SANG PHAI
        ''' </summary>
        ''' <param name="sender"></param>
        ''' <param name="args"></param>
        ''' <remarks></remarks>
        Protected Sub ButtonAdd_Click(ByVal sender As Object, ByVal args As EventArgs)
         
            Try
                If MyListControl1.SelectedItem IsNot Nothing Then
                    Dim li As New ListItem
                    Dim filename, filepath As String
                    filename = MyListControl1.Items(0).Text
                    filepath = MyListControl1.Items(0).Value
                    Dim cli As New CListItem(filename, filepath, filepath)
                    ListBox2.Items.Add(cli)
                    Dim position As Integer = 0
                    position = 0
                    MyListControl1.Items.RemoveAt(position)


                End If

            Catch ex As Exception
                Dim filename, filepath As String
                filename = ex.ToString
                filepath = ex.ToString
                Dim cli As New CListItem(filename, filepath, filepath)
                ListBox2.Items.Add(cli)
            Finally
            End Try
          


       

        End Sub

        Protected Sub ButtonReMove_Click(ByVal sender As Object, ByVal args As EventArgs)

            Try
                If ListBox2.SelectedIndex <> -1 Then

                    Dim cli As New CListItem '(filename, filepath, filepath)
                    cli.Value = ListBox2.SelectedItem.Value
                    cli.Text = ListBox2.SelectedItem.Text
                    cli.ImagePath = cli.Value
                    MyListControl1.Items.Add(cli)
                    Dim position As Integer = 0
                    position = ListBox2.SelectedIndex
                    ListBox2.Items.RemoveAt(position)

                    ' ListBox.Items.Remove(ListBox.SelectedItem.Value)
                End If

            Catch ex As Exception


            Finally

            End Try

        End Sub

        Protected Sub ButtonReMoveAll_Click(ByVal sender As Object, ByVal args As EventArgs)

            Try

                While ListBox2.Items.Count <> 0

                    Dim cli As New CListItem '(filename, filepath, filepath)
                    cli.Value = ListBox2.Items(0).Value
                    cli.Text = ListBox2.Items(0).Text
                    cli.ImagePath = cli.Value

                    MyListControl1.Items.Add(cli)
                    ListBox2.Items.RemoveAt(0)

                End While

            Catch ex As Exception


            Finally

            End Try

        End Sub

        Protected Sub ddl_thumuc_hethong_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddl_thumuc_hethong.SelectedIndexChanged
            ' Me.Page.Response.Write(ddl_thumuc_hethong.SelectedValue.ToString)
            Me.ListBox2.Items.Clear()
            Try


                Dim str_thumuc As String

                str_thumuc = ddl_thumuc_hethong.SelectedValue.ToString

                Dim str_path As String

                str_path = System.Web.HttpContext.Current.Server.MapPath(str_thumuc)

                Dim dirs As New DirectoryInfo(str_path)

                Dim files() As FileInfo

                files = dirs.GetFiles

                Dim i, j As Integer

                i = 0

                j = files.Length
                Dim _cms As New CMS_SHARED
                Dim rootds As String
                rootds = str_thumuc '.Replace("../", "")
                If j > 0 Then
                    While i < j

                        Dim filename, filepath As String
                        Dim x1 As String
                        filename = files(i).Name.ToString
                        x1 = files(i).Name.ToString
                        Dim web_path As String = ""

                        web_path = rootds.Replace("../", "")
                        filepath = _cms1.CMS_APP_NAME + web_path + filename

                     

                        filename = " <img class='imgres' alt='#' src='" + filepath + "' width=150px height=100px />" '<span>" + x1 + "</span>"
Dim cli As New CListItem(filename, filepath, filepath)
                   MyListControl1.Items.Add (cli)  
                        i = i + 1
                    End While

                ElseIf j = 0 Then


                End If

            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try
        End Sub

        Shared _sql As CUSTOM_SQL
        Private Sub album_detail()
            _sql = New CUSTOM_SQL

            _sql.GetConnectionString("DatabasetTrafficSafety1")
            Dim str_id As String
            Dim int_id As Integer
          

            If Request.QueryString("TTrafficSafety_30_Album_anh_anh") IsNot Nothing = True Then
                '<key><cv><c>anhid</c><v>1</v></cv></key>
                str_id = Request.QueryString("TTrafficSafety_30_Album_anh_anh").ToString
                str_id = str_id.Replace("anhid", "")
                str_id = str_id.Replace("<key>", "")
                str_id = str_id.Replace("</key>", "")
                str_id = str_id.Replace("<cv>", "")
                str_id = str_id.Replace("</cv>", "")
                str_id = str_id.Replace("<c>", "")
                str_id = str_id.Replace("</c>", "")
                str_id = str_id.Replace("<v>", "")
                str_id = str_id.Replace("</v>", "")
                ' Me.Page.Response.Write(str_id)
                int_id = CInt(str_id)
                ' Me.Page.Response.Write(int_id.ToString)
                Dim ds_1 As New DataSet
                Dim dt_table_infor As DataTable
                Dim dt_table_all_anh As DataTable
                ds_1 = _sql.GetRecords_album_detail(int_id)

                If ds_1 IsNot Nothing = True Then

                    dt_table_infor = New DataTable
                    dt_table_infor = ds_1.Tables(0)

                    dt_table_all_anh = New DataTable
                    dt_table_all_anh = ds_1.Tables(1)

                    Dim DuongDanAnh, strtemp As String
                    Dim root_folder As String
                    Dim i, j As Integer
                    Dim _cmsd As New CMS_SHARED
                    Dim urls As String
                    urls = _cmsd.Cmsurl

                    Dim str() As String
                    Dim _len As Integer
                    Dim _file_name As String
                    If dt_table_infor IsNot Nothing = True Then
                        If dt_table_infor.Rows.Count > 0 Then

                            DuongDanAnh = dt_table_infor.Rows(0).Item("DuongDanAnh").ToString.Trim
                            strtemp = DuongDanAnh

                            strtemp = strtemp.Replace(urls, "")
                            'http://it.mt.gov.vn/dctquantri/_SHARED_FILES/images/HANH_TRINH_KHONG_BIA_RUOU/BAN_CAN_BIET/BANCANBIET_2015/BANCANBIET_T_9/chuyen-vien-noi-vu-bi-phat-vova.jpg

                            Try
                                str = strtemp.Split("/")

                                _len = str.Length

                                _file_name = str(_len - 1)


                                root_folder = "../" + strtemp.Replace(_file_name, "")
                                Me.ddl_thumuc_hethong.SelectedValue = root_folder
                            Catch ex As Exception

                            End Try




                        End If

                    End If

                    If dt_table_all_anh IsNot Nothing = True Then
                        If dt_table_all_anh.Rows.Count > 0 Then
                            i = 0

                            j = dt_table_all_anh.Rows.Count

                            While (i < j)


                                DuongDanAnh = dt_table_all_anh.Rows(i).Item("DuongDanAnh").ToString.Trim

                                strtemp = DuongDanAnh

                                strtemp = strtemp.Replace(urls, "")
                                'http://it.mt.gov.vn/dctquantri/_SHARED_FILES/images/HANH_TRINH_KHONG_BIA_RUOU/BAN_CAN_BIET/BANCANBIET_2015/BANCANBIET_T_9/chuyen-vien-noi-vu-bi-phat-vova.jpg

                                Try
                                    str = strtemp.Split("/")

                                    _len = str.Length

                                    _file_name = str(_len - 1)
                                    Dim filename, filepath As String
                                    filename = _file_name
                                    filepath = DuongDanAnh
                                    filename = " <img class='imgres' alt='#' src='" + filepath + "' width=150px height=100px />" '<span>" + x1 + "</span>"
                                    Dim cli As New CListItem(filename, filepath, filepath)
                                    ListBox2.Items.Add(cli)
                                Catch ex As Exception

                                End Try
                                i = i + 1
                            End While

                            load_data_form1()
                        Else
                            'Me.Page.Response.Write("ZERO")
                        End If
                    ElseIf dt_table_all_anh IsNot Nothing = False Then
                        'Me.Page.Response.Write("NOT OBJECT")
                    End If
                Else

                End If
            End If
        End Sub

        Private Sub load_data_form1()

            Try


                Dim str_thumuc As String

                str_thumuc = ddl_thumuc_hethong.SelectedValue.ToString

                Dim str_path As String

                str_path = System.Web.HttpContext.Current.Server.MapPath(str_thumuc)

                Dim dirs As New DirectoryInfo(str_path)

                Dim files() As FileInfo

                files = dirs.GetFiles

                Dim i, j As Integer

                i = 0

                j = files.Length
                Dim _cms As New CMS_SHARED
                Dim rootds As String
                rootds = str_thumuc '.Replace("../", "")
                If j > 0 Then
                    While i < j

                        Dim filename, filepath As String
                        Dim x1 As String
                        filename = files(i).Name.ToString
                        x1 = files(i).Name.ToString
                        Dim web_path As String = ""

                        web_path = rootds.Replace("../", "")
                        filepath = _cms1.CMS_APP_NAME + web_path + filename

                        Dim _b As Boolean

                        Try
                            _b = check_date(filepath)

                            If _b = False Then

                                filename = " <img class='imgres' alt='#' src='" + filepath + "' width=150px height=100px />" '<span>" + x1 + "</span>"
                                Dim cli As New CListItem(filename, filepath, filepath)
                                MyListControl1.Items.Add(cli)
                            End If

                        Catch ex As Exception

                        End Try

                       
                        i = i + 1
                    End While



                ElseIf j = 0 Then


                End If

            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try

        End Sub
        Shared _sql1 As CUSTOM_SQL
        Public Sub SAVE_DATABASE()
            ' Saves the associated record in the database.
            ' SaveData calls Validate and Get methods - so it may be more appropriate to
            ' customize those methods.

            ' 1. Load the existing record from the database. Since we save the entire record, this ensures 
            ' that fields that are not displayed are also properly initialized.



            ' 2. Perform any custom validation.
            Me.Validate()

            _sql1 = New CUSTOM_SQL

            _sql1.GetConnectionString("DatabasetTrafficSafety1")

            Dim intx As Integer
            Dim str_id As String
            Dim int_id As Integer


            If Request.QueryString("TTrafficSafety_30_Album_anh_anh") IsNot Nothing = True Then
                '<key><cv><c>anhid</c><v>1</v></cv></key>
                str_id = Request.QueryString("TTrafficSafety_30_Album_anh_anh").ToString
                str_id = str_id.Replace("anhid", "")
                str_id = str_id.Replace("<key>", "")
                str_id = str_id.Replace("</key>", "")
                str_id = str_id.Replace("<cv>", "")
                str_id = str_id.Replace("</cv>", "")
                str_id = str_id.Replace("<c>", "")
                str_id = str_id.Replace("</c>", "")
                str_id = str_id.Replace("<v>", "")
                str_id = str_id.Replace("</v>", "")
                int_id = CInt(str_id)
                Try
                    intx = _sql1.GetRecords_delete_album(int_id)
                    ' Me.Page.Response.Write(intx.ToString)
                Catch ex As Exception
                    '  Me.Page.Response.Write(ex.ToString)
                End Try

                If ListBox2.Items.Count > 0 Then
                    Dim i As Integer = 0
                    '  Dim _TSa03_UserRoleTable As New TSa03_UserRoleRecord



                    While i < ListBox2.Items.Count

                        Dim _tTrafficSafety_30_Album_anh_anh As New TTrafficSafety_30_Album_anh_anhRecord
                        _tTrafficSafety_30_Album_anh_anh.HoatDong = Me.HoatDong.Checked
                        _tTrafficSafety_30_Album_anh_anh.NguoiSua = CInt(Utils.SecurityControls.GetCurrentUserID())
                        _tTrafficSafety_30_Album_anh_anh.IpSua = System.Web.HttpContext.Current.Request.ServerVariables("REMOTE_ADDR")
                        _tTrafficSafety_30_Album_anh_anh.ThoiGianSua = EvaluateFormula("Now()")

                        _tTrafficSafety_30_Album_anh_anh.NguoiTao = CInt(Utils.SecurityControls.GetCurrentUserID())
                        _tTrafficSafety_30_Album_anh_anh.IpTao = System.Web.HttpContext.Current.Request.ServerVariables("REMOTE_ADDR")
                        _tTrafficSafety_30_Album_anh_anh.ThoiGianTao = EvaluateFormula("Now()")

                        _tTrafficSafety_30_Album_anh_anh.ThuTu = CInt(Me.ThuTu.Text)
                        _tTrafficSafety_30_Album_anh_anh.ThuocAlbum = CInt(Me.ThuocAlbum.SelectedValue.ToString)
                        _tTrafficSafety_30_Album_anh_anh.DuongDanAnh = ListBox2.Items(i).Value.ToString
                        _tTrafficSafety_30_Album_anh_anh.Save()

                        i = i + 1
                    End While
                End If
            End If

          


        End Sub

        Private Function check_date(ByVal strvalue As String) As Boolean

            Dim _bol As Boolean = False

            If ListBox2.Items.Count > 0 Then

                Dim i, j As Integer

                i = 0

                j = ListBox2.Items.Count

                While (i < j)

                    Dim _filepath As String

                    _filepath = ListBox2.Items(i).Value.ToString
                    If strvalue.Equals(_filepath, StringComparison.CurrentCultureIgnoreCase) = True Then

                        _bol = True

                        Exit While
                    End If
                    i = i + 1
                End While


            End If


            Return _bol
        End Function
#End Region
      Public Sub SetPageFocus()
      'load scripts to all controls on page so that they will retain focus on PostBack
      Me.LoadFocusScripts(Me.Page)	  
          'To set focus on page load to a specific control pass this control to the SetStartupFocus method. To get a hold of  a control
          'use FindControlRecursively method. For example:
          'Dim controlToFocus As System.Web.UI.WebControls.TextBox = DirectCast(Me.FindControlRecursively("ProductsSearch"), System.Web.UI.WebControls.TextBox)
          'Me.SetFocusOnLoad(controlToFocus)
          'If no control is passed or control does not exist this method will set focus on the first focusable control on the page.
          Me.SetFocusOnLoad()  
      End Sub
       
      Public Sub LoadData()
          ' LoadData reads database data and assigns it to UI controls.
          ' Customize by adding code before or after the call to LoadData_Base()
          ' or replace the call to LoadData_Base().
          LoadData_Base()
                  If Me.Page.IsPostBack = True Then
                PopulateTree()
            Else
                PopulateTree()

            End If
            ddl_thumuc_hethong.Attributes.Add("onchange", "postbackthumuc(this)")
            album_detail()
      End Sub
      
      Private Function EvaluateFormula(ByVal formula As String, ByVal dataSourceForEvaluate as BaseClasses.Data.BaseRecord, ByVal format As String, ByVal variables As System.Collections.Generic.IDictionary(Of String, Object), ByVal includeDS as Boolean) As String
          Return EvaluateFormula_Base(formula, dataSourceForEvaluate, format, variables, includeDS)
      End Function

      Public Sub Page_InitializeEventHandlers(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Init
            ' Handles MyBase.Init. 
            ' Register the Event handler for any Events.
           Me.Page_InitializeEventHandlers_Base(sender,e)
      End Sub
      
        Protected Overrides Sub SaveControlsToSession()
            SaveControlsToSession_Base()
        End Sub


        Protected Overrides Sub ClearControlsFromSession()
            ClearControlsFromSession_Base()
        End Sub

        Protected Overrides Sub LoadViewState(ByVal savedState As Object)
            LoadViewState_Base(savedState)
        End Sub


        Protected Overrides Function SaveViewState() As Object
            Return SaveViewState_Base()
        End Function
      
      Public Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
          Me.Page_PreRender_Base(sender,e)
      End Sub


      
      Public Overrides Sub SaveData()
          Me.SaveData_Base()
      End Sub
               
    

      Public Overrides Sub SetChartControl(ByVal chartCtrlName As String)
          Me.SetChartControl_Base(chartCtrlName)
      End Sub    
      
      
      Public Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
          'Override call to PreInit_Base() here to change top level master page used by this page.
          'For example for SharePoint applications uncomment next line to use Microsoft SharePoint default master page
          'If Not Me.Master Is Nothing Then Me.Master.MasterPageFile = Microsoft.SharePoint.SPContext.Current.Web.MasterUrl	
          'You may change here assignment of application theme
          Try
              Me.PreInit_Base()
          Catch ex As Exception
          
          End Try			  
      End Sub
      
#Region "Ajax Functions"

        <Services.WebMethod()> _
        Public Shared Function GetRecordFieldValue(ByVal tableName As String, _
                                                  ByVal recordID As String, _
                                                  ByVal columnName As String, _
                                                  ByVal fieldName As String, _
                                                  ByVal title As String, _
                                                  ByVal persist As Boolean, _
                                                  ByVal popupWindowHeight As Integer, _
                                                  ByVal popupWindowWidth As Integer, _
                                                  ByVal popupWindowScrollBar As Boolean _
                                                  ) As Object()
            ' GetRecordFieldValue gets the pop up window content from the column specified by
            ' columnName in the record specified by the recordID in data base table specified by tableName.
            ' Customize by adding code before or after the call to  GetRecordFieldValue_Base()
            ' or replace the call to  GetRecordFieldValue_Base().
            Return GetRecordFieldValue_Base(tableName, recordID, columnName, fieldName, title, persist, popupWindowHeight, popupWindowWidth, popupWindowScrollBar)
        End Function

        <Services.WebMethod()> _
        Public Shared Function GetImage(ByVal tableName As String, _
                                        ByVal recordID As String, _
                                        ByVal columnName As String, _
                                        ByVal title As String, _
                                        ByVal persist As Boolean, _
                                        ByVal popupWindowHeight As Integer, _
                                        ByVal popupWindowWidth As Integer, _
                                        ByVal popupWindowScrollBar As Boolean _
                                        ) As Object()
            ' GetImage gets the Image url for the image in the column "columnName" and
            ' in the record specified by recordID in data base table specified by tableName.
            ' Customize by adding code before or after the call to  GetImage_Base()
            ' or replace the call to  GetImage_Base().
            Return GetImage_Base(tableName, recordID, columnName, title, persist, popupWindowHeight, popupWindowWidth, popupWindowScrollBar)
        End Function
    
      Protected Overloads Overrides Sub BasePage_PreRender(ByVal sender As Object, ByVal e As EventArgs)
          MyBase.BasePage_PreRender(sender, e)
          Base_RegisterPostback()
      End Sub
      
    
      


#End Region

    ' Page Event Handlers - buttons, sort, links
    
        Public Sub CancelButton_Click(ByVal sender As Object, ByVal args As EventArgs)
          ' Click handler for CancelButton.
          ' Customize by adding code before the call or replace the call to the Base function with your own code.
          CancelButton_Click_Base(sender, args)
          ' NOTE: If the Base function redirects to another page, any code here will not be executed.
        End Sub
            
        Public Sub SaveButton_Click(ByVal sender As Object, ByVal args As EventArgs)
          ' Click handler for SaveButton.
          ' Customize by adding code before the call or replace the call to the Base function with your own code.
            ' SaveButton_Click_Base(sender, args)
            ' NOTE: If the Base function redirects to another page, any code here will not be executed.
            ' Public Sub SaveButton_Click_Base(ByVal sender As Object, ByVal args As EventArgs)

            Dim shouldRedirect As Boolean = True
            Dim TargetKey As String = Nothing
            Dim DFKA As String = TargetKey
            Dim id As String = DFKA
            Dim value As String = id

            Try
                ' Enclose all database retrieval/update code within a Transaction boundary
                DbUtils.StartTransaction()


                If (Not Me.IsPageRefresh) Then
                    'Me.SaveData()
                    Me.SAVE_DATABASE()
                End If

                Me.CommitTransaction(sender)
                TargetKey = Me.Page.Request.QueryString.Item("Target")

                If Not TargetKey Is Nothing Then

                    DFKA = NetUtils.GetUrlParam(Me, "DFKA", False)
                    If Not Me.TTrafficSafety_30_Album_anh_anhRecordControl Is Nothing AndAlso Not Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource Is Nothing Then

                        id = Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.anhid.ToString
                        If Not String.IsNullOrEmpty(DFKA) Then
                            If DFKA.Trim().StartsWith("=") Then
                                Dim variables As System.Collections.Generic.IDictionary(Of String, Object) = New System.Collections.Generic.Dictionary(Of String, Object)()
                                variables.Add(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.TableCodeName, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource)
                                value = EvaluateFormula(DFKA, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource, Nothing, variables)
                            Else
                                value = Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.GetValue(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.ColumnList.GetByAnyName(DFKA)).ToString
                            End If
                        End If
                        If value Is Nothing Then
                            value = id
                        End If

                        Dim Formula As String = Me.Page.Request.QueryString.Item("Formula")
                        If Not Formula Is Nothing Then
                            Dim variables As System.Collections.Generic.IDictionary(Of String, Object) = New System.Collections.Generic.Dictionary(Of String, Object)()
                            variables.Add(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.TableCodeName, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource)
                            value = EvaluateFormula(Formula, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource, Nothing, variables)
                        End If

                        BaseClasses.Utils.MiscUtils.RegisterAddButtonScript(Me, TargetKey, id, value)
                    End If
                    shouldRedirect = False

                End If

            Catch ex As Exception
                ' Upon error, rollback the transaction
                Me.RollBackTransaction(sender)
                shouldRedirect = False
                Me.ErrorOnPage = True

                ' Report the error message to the end user
                Utils.MiscUtils.RegisterJScriptAlert(Me, "BUTTON_CLICK_MESSAGE", ex.Message)

            Finally
                DbUtils.EndTransaction()
            End Try
            If shouldRedirect Then
                Me.ShouldSaveControlsToSession = True
                Me.RedirectBack()
            ElseIf Not TargetKey Is Nothing AndAlso _
                        Not shouldRedirect Then
                Me.ShouldSaveControlsToSession = True
                Me.CloseWindow(True)

            End If
            ' End Sub

        End Sub


        ' Write out the Set methods


        ' Write out the methods for DataSource


#End Region

#Region "Section 2: Do not modify this section."

        Protected Sub Page_InitializeEventHandlers_Base(ByVal sender As Object, ByVal e As System.EventArgs)            		
           
            ' This page does not have FileInput  control inside repeater which requires "multipart/form-data" form encoding, but it might
            'include ascx controls which in turn do have FileInput controls inside repeater. So check if they set Enctype property.
            If Not String.IsNullOrEmpty(Me.Enctype) Then Me.Page.Form.Enctype = Me.Enctype
                 
    
            ' the following code for accordion is necessary or the Me.{ControlName} will return Nothing
        
            ' Register the Event handler for any Events.
      

          ' Setup the pagination events.
        
            AddHandler Me.CancelButton.Button.Click, AddressOf CancelButton_Click
        
            AddHandler Me.SaveButton.Button.Click, AddressOf SaveButton_Click
        
            Me.SaveButton.Button.Attributes.Add("onclick", "SubmitHRefOnce(this, """ & Me.GetResourceValue("Txt:SaveRecord", "CMStTrafficSafety") & """);")
        
          Me.ClearControlsFromSession()
        End Sub

        Private Sub Base_RegisterPostback()
        
              Me.RegisterPostBackTrigger(MiscUtils.FindControlRecursively(Me,"SaveButton"))
                        
        End Sub

    

       ' Handles MyBase.Load.  Read database data and put into the UI controls.
       ' If you need to, you can add additional Load handlers in Section 1.
       Protected Overridable Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    
           Me.SetPageFocus()
    
            ' Check if user has access to this page.  Redirects to either sign-in page
            ' or 'no access' page if not. Does not do anything if role-based security
            ' is not turned on, but you can override to add your own security.
            Me.Authorize("")
    
            If (Not Me.IsPostBack) Then
            
                ' Setup the header text for the validation summary control.
                Me.ValidationSummary1.HeaderText = GetResourceValue("ValidationSummaryHeaderText", "CMStTrafficSafety")
              
            End If
            
            'set value of the hidden control depending on the postback. It will be used by SetFocus script on the client side.	
            Dim clientSideIsPostBack As System.Web.UI.HtmlControls.HtmlInputHidden = DirectCast(Me.FindControlRecursively("_clientSideIsPostBack"), System.Web.UI.HtmlControls.HtmlInputHidden)
            If Not clientSideIsPostBack Is Nothing Then
                If Me.IsPostBack AndAlso Not Me.Request("__EVENTTARGET") = "ChildWindowPostBack" Then
                    clientSideIsPostBack.Value = "Y"
                Else
                    clientSideIsPostBack.Value = "N"
                End If
            End If

            ' Load data only when displaying the page for the first time or if postback from child window
            If (Not Me.IsPostBack OrElse Me.Request("__EVENTTARGET") = "ChildWindowPostBack") Then
                ' Read the data for all controls on the page.
                ' To change the behavior, override the DataBind method for the individual
                ' record or table UI controls.
                Me.LoadData()
            End If
        
        
            Page.Title = "Sửa ảnh trong album"
        End Sub

    Public Shared Function GetRecordFieldValue_Base(ByVal tableName As String, _
                                                ByVal recordID As String, _
                                                ByVal columnName As String, _
                                                ByVal fieldName As String, _
                                                ByVal title As String, _
                                                ByVal persist As Boolean, _
                                                ByVal popupWindowHeight As Integer, _
                                                ByVal popupWindowWidth As Integer, _
                                                ByVal popupWindowScrollBar As Boolean _
                                                ) As Object()
        If Not IsNothing(recordID) Then
            recordID = System.Web.HttpUtility.UrlDecode(recordID)
        End If
        Dim content as String = BaseClasses.Utils.MiscUtils.GetFieldData(tableName, recordID, columnName)
    
        content = NetUtils.EncodeStringForHtmlDisplay(content)

        'returnValue is an array of string values.
        'returnValue(0) represents title of the pop up window
        'returnValue(1) represents content of the pop up window
        ' retrunValue(2) represents whether pop up window should be made persistant
        ' or it should closes as soon as mouse moved out.
        ' returnValue(5) represents whether pop up window should contain scroll bar.
        ' returnValue(3), (4) represents pop up window height and width respectivly
        ' (0),(2),(3),(4) and (5)  is initially set as pass through attribute.
        ' They can be modified by going to Attribute tab of the properties window of the control in aspx page.
        Dim returnValue(6) As Object
        returnValue(0) = title
        returnValue(1) = content
        returnValue(2) = persist
        returnValue(3) = popupWindowWidth
        returnValue(4) = popupWindowHeight
        returnValue(5) = popupWindowScrollBar
        Return returnValue
    End Function


    Public Shared Function GetImage_Base(ByVal tableName As String, _
                                    ByVal recordID As String, _
                                    ByVal columnName As String, _
                                    ByVal title As String, _
                                    ByVal persist As Boolean, _
                                    ByVal popupWindowHeight As Integer, _
                                    ByVal popupWindowWidth As Integer, _
                                    ByVal popupWindowScrollBar As Boolean _
                                    ) As Object()
        Dim content As String = "<IMG alt =""" & title & """ src =" & """../Shared/ExportFieldValue.aspx?Table=" & tableName & "&Field=" & columnName & "&Record=" & recordID & """/>"
        'returnValue is an array of string values.
        'returnValue(0) represents title of the pop up window.
        'returnValue(1) represents content ie, image url.
        ' retrunValue(2) represents whether pop up window should be made persistant
        ' or it should closes as soon as mouse moved out.
        ' returnValue(3), (4) represents pop up window height and width respectivly
        ' returnValue(5) represents whether pop up window should contain scroll bar.
        ' (0),(2),(3),(4) and (5) is initially set as pass through attribute.
        ' They can be modified by going to Attribute tab of the properties window of the control in aspx page.
        Dim returnValue(6) As Object
        returnValue(0) = title
        returnValue(1) = content
        returnValue(2) = persist
        returnValue(3) = popupWindowWidth
        returnValue(4) = popupWindowHeight
        returnValue(5) = popupWindowScrollBar
        Return returnValue
    End Function
        
      Public Sub SetChartControl_Base(ByVal chartCtrlName As String)
          ' Load data for each record and table UI control.
        
      End Sub          


    
      
      Public Sub SaveData_Base()
              
        Me.TTrafficSafety_30_Album_anh_anhRecordControl.SaveData()
        
      End Sub
      
      

        
    
        Protected Sub SaveControlsToSession_Base()
            MyBase.SaveControlsToSession()
        
        End Sub


        Protected Sub ClearControlsFromSession_Base()
            MyBase.ClearControlsFromSession()
        
        End Sub

        Protected Sub LoadViewState_Base(ByVal savedState As Object)
            MyBase.LoadViewState(savedState)
        
        End Sub


        Protected Function SaveViewState_Base() As Object
            
            Return MyBase.SaveViewState()
        End Function


      Public Sub PreInit_Base()
      'If it is SharePoint application this function performs dynamic Master Page assignment.
      
      End Sub
      
      Public Sub Page_PreRender_Base(ByVal sender As Object, ByVal e As System.EventArgs)
     
            ' Load data for each record and table UI control.
                  
            ' Data bind for each chart UI control.
              
      End Sub  

    
        ' Load data from database into UI controls.
        ' Modify LoadData in Section 1 above to customize.  Or override DataBind() in
        ' the individual table and record controls to customize.
        Public Sub LoadData_Base()
            Try
              
                If (Not Me.IsPostBack OrElse Me.Request("__EVENTTARGET") = "ChildWindowPostBack")  Then
                    ' Must start a transaction before performing database operations
                    DbUtils.StartTransaction()
                End If
     
                Me.DataBind()

                ' Load and bind data for each record and table UI control.
                        
        Me.TTrafficSafety_30_Album_anh_anhRecordControl.LoadData()
        Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataBind()
        
    
                ' Load data for chart.
                
            
                ' initialize aspx controls
                
                

            Catch ex As Exception
                ' An error has occured so display an error message.
                Utils.RegisterJScriptAlert(Me, "Page_Load_Error_Message", ex.Message)
            Finally
                If (Not Me.IsPostBack OrElse Me.Request("__EVENTTARGET") = "ChildWindowPostBack")  Then
                    ' End database transaction
                      DbUtils.EndTransaction()
                End If
            End Try
        End Sub
        
        Public EvaluateFormulaDelegate As BaseClasses.Data.DataSource.EvaluateFormulaDelegate = New BaseClasses.Data.DataSource.EvaluateFormulaDelegate(AddressOf Me.EvaluateFormula)
        
        Public Overridable Function EvaluateFormula_Base(ByVal formula As String, ByVal dataSourceForEvaluate As BaseClasses.Data.BaseRecord, ByVal format As String, ByVal variables As System.Collections.Generic.IDictionary(Of String, Object), ByVal includeDS As Boolean) As String
            Dim e As FormulaEvaluator = New FormulaEvaluator()

            ' add variables for formula evaluation
            If variables IsNot Nothing Then
                Dim enumerator As System.Collections.Generic.IEnumerator(Of System.Collections.Generic.KeyValuePair(Of String, Object)) = variables.GetEnumerator()
                While enumerator.MoveNext()
                    e.Variables.Add(enumerator.Current.Key, enumerator.Current.Value)
                End While
            End If

            If includeDS
                
            End If

            
            e.CallingControl = Me

            e.DataSource = dataSourceForEvaluate


            Dim resultObj As Object = e.Evaluate(formula)
            If resultObj Is Nothing Then
                Return ""
            End If

            If Not String.IsNullOrEmpty(format) AndAlso (String.IsNullOrEmpty(formula) OrElse formula.IndexOf("Format(") < 0) Then
                Return FormulaUtils.Format(resultObj, format)
            Else
                Return resultObj.ToString()
            End If
        End Function      
        
        Public Function EvaluateFormula(ByVal formula As String, ByVal dataSourceForEvaluate As BaseClasses.Data.BaseRecord, ByVal format As String, ByVal variables As System.Collections.Generic.IDictionary(Of String, Object)) As String
          Return EvaluateFormula(formula, dataSourceForEvaluate, format, variables, True)
        End Function


        Private Function EvaluateFormula(ByVal formula As String, ByVal dataSourceForEvaluate As BaseClasses.Data.BaseRecord) As String
          Return EvaluateFormula(formula, dataSourceForEvaluate, Nothing, Nothing, True)
        End Function

        Public Function EvaluateFormula(ByVal formula As String, ByVal includeDS As Boolean) As String
          Return EvaluateFormula(formula, Nothing, Nothing, Nothing, includeDS)
        End Function

        Public Function EvaluateFormula(ByVal formula As String) As String
          Return EvaluateFormula(formula, Nothing, Nothing, Nothing, True)
        End Function
 
        

        ' Write out the Set methods
        

        ' Write out the DataSource properties and methods
                

        ' Write out event methods for the page events
        
        ' event handler for Button with Layout
        Public Sub CancelButton_Click_Base(ByVal sender As Object, ByVal args As EventArgs)
              
        Dim shouldRedirect As Boolean = True
        Dim TargetKey As String = Nothing
        Dim DFKA As String = TargetKey
        Dim id As String = DFKA
        Dim value As String = id
      
    Try
    

                TargetKey = Me.Page.Request.QueryString.Item("Target")
                If Not TargetKey Is Nothing Then
                   shouldRedirect = False
                End If
      
            Catch ex As Exception
                shouldRedirect = False
                Me.ErrorOnPage = True
    
                ' Report the error message to the end user
                Utils.MiscUtils.RegisterJScriptAlert(Me, "BUTTON_CLICK_MESSAGE", ex.Message)
    
            Finally
    
            End Try
            If shouldRedirect Then
                Me.ShouldSaveControlsToSession = True
                Me.RedirectBack()
            ElseIf Not TargetKey Is Nothing AndAlso _
                        Not shouldRedirect Then
            Me.ShouldSaveControlsToSession = True
            Me.CloseWindow(True)
        
            End If
        End Sub
            
        ' event handler for Button with Layout
        Public Sub SaveButton_Click_Base(ByVal sender As Object, ByVal args As EventArgs)
              
        Dim shouldRedirect As Boolean = True
        Dim TargetKey As String = Nothing
        Dim DFKA As String = TargetKey
        Dim id As String = DFKA
        Dim value As String = id
      
    Try
    ' Enclose all database retrieval/update code within a Transaction boundary
                DbUtils.StartTransaction
                
        
              If (Not Me.IsPageRefresh) Then         
                  Me.SaveData()
              End If        
        
            Me.CommitTransaction(sender)
            TargetKey = Me.Page.Request.QueryString.Item("Target")

            If Not TargetKey Is Nothing Then
                  
                      DFKA = NetUtils.GetUrlParam(Me, "DFKA", false)
                      If Not Me.TTrafficSafety_30_Album_anh_anhRecordControl Is Nothing AndAlso Not Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource Is Nothing Then
                      
                      id = Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.anhid.ToString
                      If not String.IsNullOrEmpty(DFKA) then
                          If DFKA.Trim().StartsWith("=") then
                          Dim variables as System.Collections.Generic.IDictionary(Of String, Object) = new System.Collections.Generic.Dictionary(Of String, Object)()
                          variables.Add(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.TableCodeName, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource)
                              value = EvaluateFormula(DFKA, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource, Nothing,variables)
                          Else
                              value = Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.GetValue(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.ColumnList.GetByAnyName(DFKA)).ToString
                          End If
                       End If
                          If value is Nothing Then
                              value = id
                          End If
                      
                      Dim Formula As String = Me.Page.Request.QueryString.Item("Formula")
                      If Not Formula Is Nothing Then
                          Dim variables as System.Collections.Generic.IDictionary(Of String, Object) = new System.Collections.Generic.Dictionary(Of String, Object)()
                          variables.Add(Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource.TableAccess.TableDefinition.TableCodeName, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource)
                          value = EvaluateFormula(formula, Me.TTrafficSafety_30_Album_anh_anhRecordControl.DataSource, Nothing,variables)
                      End If

                      BaseClasses.Utils.MiscUtils.RegisterAddButtonScript(Me, TargetKey, id, value)
                End If
                shouldRedirect = False
                        
            End If
        
            Catch ex As Exception
                ' Upon error, rollback the transaction
                Me.RollBackTransaction(sender)
                shouldRedirect = False
                Me.ErrorOnPage = True
    
                ' Report the error message to the end user
                Utils.MiscUtils.RegisterJScriptAlert(Me, "BUTTON_CLICK_MESSAGE", ex.Message)
    
            Finally
                DbUtils.EndTransaction
            End Try
            If shouldRedirect Then
                Me.ShouldSaveControlsToSession = True
                Me.RedirectBack()
            ElseIf Not TargetKey Is Nothing AndAlso _
                        Not shouldRedirect Then
            Me.ShouldSaveControlsToSession = True
            Me.CloseWindow(True)
        
            End If
        End Sub
                
    
#End Region


    End Class
  
End Namespace
  