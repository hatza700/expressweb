
' This file implements the code-behind class for DashBoard.aspx.
' App_Code\DashBoard.Controls.vb contains the Table, Row and Record control classes
' for the page.  Best practices calls for overriding methods in the Row or Record control classes.

#Region "Imports statements"

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

Imports CMStTrafficSafety.Business
Imports CMStTrafficSafety.Data
Imports System.IO


#End Region


Namespace CMStTrafficSafety.UI

    Partial Public Class DashBoard
        Inherits BaseApplicationPage
        ' Code-behind class for the DashBoard page.
        ' Place your customizations in Section 1. Do not modify Section 2.

#Region "Section 1: Place your customizations here."

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

            write_log("Truy cập trang:Tổng quan")

            load_overview()

            load_log_file()



            quick_access()

            load_chart()
        End Sub

#Region "DECLARE"

        Private _CMS As CMS_SHARED
        Private _app_root As String
        Private _str_text As StringBuilder

        Private _img_feedback As String
        Private _img_comment As String
        Private _img_user As String
        Private _img_visitor As String
        Dim DT_LOGS As New DataTable
        '9/16/2015 2:24:41 PM | ::1 | huyen | http://it.mt.gov.vn/dctquantri/DashBoard/DashBoard.aspx|HUYEN
#End Region

#Region "METHODS"

        Private Sub configuration_data()

            _CMS = New CMS_SHARED

            _app_root = _CMS.CMS_APP_NAME.ToString.Trim

            _img_feedback = _app_root + "Images/feedback.png"

            _img_comment = _app_root + "Images/comment.jpg"

            _img_user = _app_root + "Images/users.png"

            _img_visitor = _app_root + "Images/chart.jpg"

            DT_LOGS.Columns.Add("Date", GetType(DateTime))
            DT_LOGS.Columns.Add("Ip", GetType(String))
            DT_LOGS.Columns.Add("HostName", GetType(String))
            DT_LOGS.Columns.Add("Url", GetType(String))
            DT_LOGS.Columns.Add("Username", GetType(String))
            DT_LOGS.Columns.Add("Action", GetType(String))
        End Sub
        Shared _sql As CUSTOM_SQL
        Private Sub load_overview()

            configuration_data()
            _sql = New CUSTOM_SQL

            _sql.GetConnectionString("DatabasetTrafficSafety1")

            Dim ds As New DataSet
            ds = _sql.GetRecords_overview
            Dim tbl_gopy, tbl_binh_luan, tbl_user As DataTable
            Dim str_gopy, str_user, str_binhluan As String
            str_gopy = ""
            str_user = ""
            str_binhluan = ""
            If ds IsNot Nothing = True Then
                tbl_gopy = New DataTable
                tbl_gopy = ds.Tables(0)

                tbl_binh_luan = New DataTable
                tbl_binh_luan = ds.Tables(1)

                tbl_user = New DataTable
                tbl_user = ds.Tables(2)

                If tbl_gopy IsNot Nothing = True Then
                    If tbl_gopy.Rows.Count > 0 Then

                        Try
                            str_gopy = tbl_gopy.Rows(0).Item("gopycount").ToString.Trim
                        Catch ex As Exception
                            str_gopy = ""
                        End Try
                    End If
                Else : End If

                If tbl_binh_luan IsNot Nothing = True Then
                    If tbl_binh_luan.Rows.Count > 0 Then
                        Try
                            str_binhluan = tbl_binh_luan.Rows(0).Item("binhluancount").ToString.Trim

                        Catch ex As Exception
                            str_binhluan = ""
                        End Try

                    End If
                Else : End If


                If tbl_user IsNot Nothing = True Then
                    If tbl_user.Rows.Count > 0 Then
                        Try
                            str_user = tbl_user.Rows(0).Item("countuser").ToString.Trim
                        Catch ex As Exception
                            str_user = ""
                        End Try


                    End If
                Else : End If


            Else

            End If


            '
            Dim Newdir As String
            Dim objfolder As Tracking
            Dim objtime = New times
            Dim intvalue As Integer
            Dim _folder_name_year As String
            Dim _folder_name_month As String
            Dim _day As String
            Dim _filename As String

            'Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/total_visitors.log")
            '' Me.Page.Response.Write(Newdir)
            'Dim number_total as

            _str_text = New StringBuilder

            _str_text.Append("")

            _str_text.Append("<div class=""row"">")
            _str_text.Append("<div class=""col""><div class=""inner"">")
            _str_text.Append("<div class=""col1_left"">")

            _str_text.Append("<img src='" + _img_feedback + "' style=""border:0;width:50px;height:50px;"" />")
            _str_text.Append("</div>")

            _str_text.Append("<div class=""col1_right""><div class=""large"">" + str_gopy + "</div>")
            _str_text.Append("<div class=""text-muted""><a href='" + _app_root + "/tTrafficSafety_16_GopY/ShowTTrafficSafety_16_GopYTable.aspx'>Ý kiên đóng góp</a></div>")
            _str_text.Append("</div>")

            _str_text.Append("</div></div>")
            _str_text.Append("<div class=""col""><div class=""inner"">")
            _str_text.Append("<div class=""col2_left"">")
            _str_text.Append("<img src='" + _img_comment + "' style=""border:0;width:50px;height:50px;"" />")
            _str_text.Append("</div>")

            _str_text.Append("<div class=""col2_right""><div class=""large"">" + str_binhluan + "</div>")
            _str_text.Append("<div class=""text-muted""><a href='" + _app_root + "tTrafficSafety_10_BinhLuan/ShowTTrafficSafety_10_BinhLuanTable.aspx'>Bình luận</a></div>")
            _str_text.Append("</div>")
            _str_text.Append("</div></div>")

            _str_text.Append("<div class=""col""><div class=""inner"">")
            _str_text.Append("<div class=""col3_left"">")
            _str_text.Append("<img src='" + _img_user + "' style=""border:0;width:50px;height:50px;"" />")
            _str_text.Append("</div>")

            _str_text.Append("<div class=""col3_right""><div class=""large"">" + str_user + "</div>")
            _str_text.Append("<div class=""text-muted""><a href='" + _app_root + "tSa01_User/ShowTSa01_UserTable.aspx'>Người dùng</a></div>")
            _str_text.Append("</div>")
            _str_text.Append("</div></div>")
            _str_text.Append("<div class=""col""><div class=""inner""><div class=""col4_left"">")
            _str_text.Append("<img src='" + _img_visitor + "' style=""border:0;width:50px;height:50px;"" />")
            _str_text.Append("</div>")

            _str_text.Append("<div class=""col4_right""><div class=""large"">25k</div>")
            _str_text.Append("<div class=""text-muted""><a href='#'>Khách</a></div>")
            _str_text.Append("</div></div></div>")
            _str_text.Append("</div>")

            Me.lit_overview.Text = _str_text.ToString.Trim

            _str_text = Nothing
        End Sub

        Private Sub load_log_file()

            'GET CURENT DAY MONTH YEAR

            Dim objfolder As New Tracking
            Dim objtime As New times
            Dim _folder_name_year As String
            Dim _folder_name_month As String
            Dim _day As String
            Dim Newdir As String


            'ROOTFOLDER
            Dim Dir As DirectoryInfo

            Dim List_dir() As DirectoryInfo

            Dim _inti, _intlen As Integer

            Dim _current_year As String

            Dim _int_year As Integer

            Dim Newdir_sub As String

            Dim Dir_sub As DirectoryInfo

            Dim List_dir_sub() As DirectoryInfo

            Dim _list As List(Of String)

            Dim _list_folder As List(Of String)

            Dim _list_files As New List(Of String)

            'CURENTYEAR
            _folder_name_year = objtime.current_year.ToString.Trim

            'CURENT MONTH
            _folder_name_month = objtime.current_month.ToString.Trim

            'CURENT DAY
            _day = objtime.current_day

            Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore")

            Dir = New DirectoryInfo(Newdir)

            List_dir = Dir.GetDirectories


            _inti = 0

            _intlen = List_dir.Length

            _list = New List(Of String)

            While (_inti < _intlen)

                _current_year = List_dir(_inti).Name.ToString.Trim

                _list.Add(_current_year)

                _inti = _inti + 1


            End While

            _inti = 0

            _list.Reverse()
            _intlen = _inti + 1
            While (_inti < _intlen)


                _current_year = _list(_inti).ToString.Trim

                Newdir_sub = System.Web.HttpContext.Current.Server.MapPath("../logstore" + "/" + _current_year)
                ' Me.Page.Response.Write(_current_year + "<br>")

                Dir_sub = New DirectoryInfo(Newdir_sub)

                List_dir_sub = Dir_sub.GetDirectories

                Dim j As Integer = 0

                Dim jlen As Integer = List_dir_sub.Length

                _list_folder = New List(Of String)
                While j < jlen

                    Dim _folder As String = ""

                    _folder = List_dir_sub(j).ToString.Trim

                    _list_folder.Add(_folder)
                    j = j + 1
                End While

                process_month(_list_folder, _current_year, _list_files)

                ' _int_year = CInt(_current_year)

                _inti = _inti + 1
            End While


            '  Me.Page.Response.Write(List_dir.Length.ToString)


            _str_text = New StringBuilder
            _str_text.Append("")
            _str_text.Append("<div class=""col-md-4"">")

            _str_text.Append("<div class=""panel panel-blue"">")
            _str_text.Append("<div class=""panel-heading dark-overlay""><span class=""glyphicon glyphicon-check""></span>Logs</div>")
            _str_text.Append("<div class=""panel-body"">")

            If DT_LOGS IsNot Nothing = True Then
                ' Me.Page.Response.Write(DT_LOGS.Rows.Count.ToString)
                If DT_LOGS.Rows.Count > 0 Then

                    DT_LOGS.DefaultView.Sort = "Date Desc"

                    Dim _date, _uname, _icon, _action As String

                    If _CMS IsNot Nothing = True Then


                    Else
                        _CMS = New CMS_SHARED
                    End If
                    _app_root = _CMS.CMS_APP_NAME

                    Dim _str_icons As String = _app_root.ToString + "Images/User-blue-icon.png"

                    Dim _i, _limit As Integer

                    _i = 0
                    _limit = 12

                    _str_text.Append("<ul class=""todo-list"">")


                    For Each _row As DataRowView In DT_LOGS.DefaultView
                        If (_i < _limit) Then
                            _date = _row("Date").ToString

                            _uname = _row("Username").ToString

                            _action = _row("Action").ToString

                            _str_text.Append("<li class=""todo-list-item"">")
                            _str_text.Append("<div class=""checkbox"">")
                            _str_text.Append("<label for=""checkbox"">")
                            _str_text.Append("<img src='" + _str_icons + "' style='border:0;width:16px;' />")
                            _str_text.Append("&nbsp;&nbsp;&nbsp;")
                            _str_text.Append(_uname + "-" + _action)
                            _str_text.Append("</label>")
                            _str_text.Append("</div>")
                            _str_text.Append("</li>")


                        Else
                            Exit For
                        End If

                        _i = _i + 1
                        ' Me.Page.Response.Write(_uname)
                    Next

                    Dim _url As String = "#"

                    Try
                        If _CMS IsNot Nothing = True Then

                        Else
                            _CMS = New CMS_SHARED
                        End If

                        _app_root = _CMS.CMS_APP_NAME

                        _url = _app_root + "logs/AdminLogs.aspx"
                    Catch ex As Exception

                    End Try

                    _str_text.Append("<li class=""todo-list-item"">")
                    _str_text.Append("<div class=""checkbox"">")
                    _str_text.Append("<label for=""checkbox"" >")
                    _str_text.Append("<button class=""button-secondary pure-button"" ><a href='" + _url + "'>Xem thêm</a></button>")
                    _str_text.Append("</label>")
                    _str_text.Append("</div>")
                    _str_text.Append("</li>")
                End If
            Else

            End If








            _str_text.Append("</ul>")

            _str_text.Append("</div>")
            _str_text.Append("</div>")
            _str_text.Append("</div>")
            Me.lit_log10.Text = _str_text.ToString.Trim

            _str_text = Nothing
        End Sub

        Private Sub process_month(ByVal ilist_month As List(Of String), ByVal iyear As String, ByRef _ilist_files As List(Of String))

            Dim _i1, _len1 As Integer
            Dim _path As String = ""
            Dim _directoryinfo As DirectoryInfo

            Dim FileList As FileInfo()


            _i1 = 0

            _len1 = ilist_month.Count

            While (_i1 < _len1)

                _path = System.Web.HttpContext.Current.Server.MapPath("../logstore" + "/" + iyear + "/" + ilist_month(_i1).ToString)

                _directoryinfo = New DirectoryInfo(_path)

                Try


                    FileList = _directoryinfo.GetFiles("*.*")
                    For Each FI As FileInfo In FileList
                        _ilist_files.Add(FI.FullName.ToString.Trim)
                        ' Me.Page.Response.Write(FI.FullName.ToString.Trim + "</br>")
                        process_files(FI.FullName.ToString.Trim, _ilist_files)
                    Next
                Catch ex As Exception

                End Try
                ' Me.Page.Response.Write("iyear=" + iyear + "-" + "month=" + ilist_month(_i1).ToString)

                _i1 = _i1 + 1
            End While




        End Sub

        Private Sub process_files(ByVal ifilenam As String, ByRef _ilist_files As List(Of String))
            '9/17/2015 9:00:15 AM | ::1 | huyen | http://it.mt.gov.vn/dctquantri/DashBoard/DashBoard.aspx|huyenhs|Truy cập trang:Tổng quan
            Dim _date, _ip, _hostname, _url, _iuname, _action As String

            Dim FILE_NAME As String = ifilenam

            Dim TextLine As String

            Dim _array() As String
            If System.IO.File.Exists(FILE_NAME) = True Then

                Dim objReader As New System.IO.StreamReader(FILE_NAME)

                Do While objReader.Peek() <> -1

                    TextLine = objReader.ReadLine()

                    Try
                        _array = TextLine.Split("|")
                    Catch ex As Exception
                        _array = Nothing
                    End Try

                    If _array IsNot Nothing = True Then
                        _date = _array(0).ToString.Trim

                        _ip = _array(1).ToString.Trim
                        _hostname = _array(2).ToString.Trim
                        _url = _array(3).ToString.Trim
                        _iuname = _array(4).ToString.Trim
                        _action = _array(5).ToString.Trim
                        Dim _row As DataRow
                        _row = DT_LOGS.NewRow

                        _row("Date") = _date
                        _row("Ip") = _ip
                        _row("HostName") = _hostname
                        _row("Url") = _url
                        _row("Username") = _iuname
                        _row("Action") = _action
                        DT_LOGS.Rows.Add(_row)
                    Else

                    End If

                Loop



            Else



            End If

        End Sub

        Private Sub load_chart()

            'LOAD ALL CHART FROM MONTH


            _str_text = New StringBuilder

            '_str_text.Append("")
            ''_str_text.Append("<script type=""text/javascript"">" + vbCrLf)
            ''_str_text.Append("//<![CDATA[" + vbCrLf)
            '_str_text.Append("jQuery.noConflict();" + vbCrLf)
            '_str_text.Append("jQuery(document).ready(function(){" + vbCrLf)
            '_str_text.Append("jQuery.jqplot.config.enablePlugins = true;" + vbCrLf)
            '_str_text.Append("var s1 = [212, 316];" + vbCrLf)
            '_str_text.Append("var ticks = ['8/2025','9/2025'];" + vbCrLf)

            '_str_text.Append("plot1 = jQuery.jqplot('chart10', [s1], {" + vbCrLf)
            '_str_text.Append(" // Only animate if we're not using excanvas (not in IE 7 or IE 8).." + vbCrLf)
            '_str_text.Append("animate: !jQuery.jqplot.use_excanvas," + vbCrLf)
            '_str_text.Append("seriesDefaults:{" + vbCrLf)
            '_str_text.Append(" renderer:jQuery.jqplot.BarRenderer," + vbCrLf)
            '_str_text.Append(" pointLabels: { show: true }" + vbCrLf)
            '_str_text.Append(" }," + vbCrLf)
            '_str_text.Append(" axes: {" + vbCrLf)
            '_str_text.Append("  xaxis: {" + vbCrLf)
            '_str_text.Append("    renderer: jQuery.jqplot.CategoryAxisRenderer," + vbCrLf)
            '_str_text.Append("ticks:      ticks()" + vbCrLf)
            '_str_text.Append("}" + vbCrLf)
            '_str_text.Append("}," + vbCrLf)
            '_str_text.Append("highlighter: { show: false }" + vbCrLf)
            '_str_text.Append("});" + vbCrLf)

            '_str_text.Append("jQuery('#chart1').bind('jqplotDataClick', " + vbCrLf)
            '_str_text.Append(" function (ev, seriesIndex, pointIndex, data) {" + vbCrLf)
            '_str_text.Append("    jQuery('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);" + vbCrLf)
            '_str_text.Append(" }" + vbCrLf)
            '_str_text.Append(" );" + vbCrLf)
            '_str_text.Append(" });" + vbCrLf)
            ''_str_text.Append(" //]]>" + vbCrLf)
            '_str_text.Append("</script>" + vbCrLf)
            Dim scriptText As String = ""
            scriptText = "<script type=""text/javascript"" src='" + _app_root + "JScript.js'></script>"
            'ClientScript.RegisterClientScriptBlock(Me.GetType(), _
            '"CounterScript", scriptText, False)
            '  Me.lit_quick_log_ref.Text = scriptText.ToString
            _str_text = Nothing

        End Sub

        Private Sub quick_access()
            _str_text = New StringBuilder

            _str_text.Append(" <div id=""x11"" style=""font-size:20px;padding-left:10px;")
            _str_text.Append("padding-top:10px;padding-bottom:10px;"">Truy cập nhanh</div>")
            _str_text.Append("<div class=""cpanel"" style=""padding-top:5px;"">")
            _str_text.Append("<div class=""icon-wrapper"">")
            _str_text.Append("<div class=""icon1"">")
            _str_text.Append("<a class='color' href=""../tTrafficSafety_08_TinTuc/AddTTrafficSafety_08_TinTuc.aspx"">")
            _str_text.Append("<img src=""../Customize_style/icons/icon-48-article-add.png"" alt="""">")
            _str_text.Append("<div class='color'>Thêm tin tức</div></a></div></div>")

            _str_text.Append("<div class=""icon-wrapper""><div class=""icon1"">")
            _str_text.Append("<a class='color' href=""../tTrafficSafety_07_DanhMucTinTuc/ShowTTrafficSafety_07_DanhMucTinTucTable.aspx"">")
            _str_text.Append("<img src=""../Customize_style/icons/icon-48-category.png"" alt="""" />")
            _str_text.Append("<div class='color'>Xem danh mục</div></a></div></div>")

            _str_text.Append("<div class=""icon-wrapper""><div class=""icon1"">")
            _str_text.Append("<a class='color' href=""../tTrafficSafety_09_Videos/ShowTTrafficSafety_09_VideosTable.aspx"">")
            _str_text.Append("<img src=""../Customize_style/icons/icon-48-media.png"" alt="""">")
            _str_text.Append("<div class='color'>Danh sách video</div></a></div></div>")

            _str_text.Append("<div class=""icon-wrapper""><div class=""icon1"">")
            _str_text.Append("<a class='color' href=""../tSa01_User/AddTSa01_User.aspx"">")
            _str_text.Append("<img src=""../Customize_style/icons/icon-48-user.png"" alt="""">")
            _str_text.Append("<div class='color'>Thêm người dùng</div></a></div></div>")

            _str_text.Append("<div class=""icon-wrapper""><div class=""icon1"">")
            _str_text.Append("<a href=""../DashBoard/QuanlyAnh.aspx""><img src=""../Customize_style/icons/icon-48-menumgr.png"" alt="""">")
            _str_text.Append("<div class='color'>Quản lý ảnh</div></a></div></div>")

            _str_text.Append("<div class=""icon-wrapper""><div class=""icon1"">")
            _str_text.Append("<a href=""../tTrafficSafety_26_QuangCao/AddTTrafficSafety_26_QuangCao.aspx"">")
            _str_text.Append("<img src=""../Customize_style/icons/icon-48-themes.png"" alt="""">")
            _str_text.Append("<div class='color'>Thêm quảng cáo</div></a></div></div>")
            _str_text.Append("</div> ")
            lit_quick_log_ref.Text = ""
            Me.lit_quick_access10.Text = _str_text.ToString

            _str_text = Nothing
        End Sub

        Private Sub write_log(ByVal iaction As String)

            Dim _log As New logs

            Dim iuname As String = Utils.SecurityControls.GetCurrentUserName.ToString.Trim
            Try
                _log.write_logs(iaction, iuname)

            Catch ex As Exception
                '  Me.Page.Response.Write(ex.ToString.Trim + "</br>")
            End Try


        End Sub

#End Region

        Private Function EvaluateFormula(ByVal formula As String, ByVal dataSourceForEvaluate As BaseClasses.Data.BaseRecord, ByVal format As String, ByVal variables As System.Collections.Generic.IDictionary(Of String, Object), ByVal includeDS As Boolean) As String
            Return EvaluateFormula_Base(formula, dataSourceForEvaluate, format, variables, includeDS)
        End Function

        Public Sub Page_InitializeEventHandlers(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Init
            ' Handles MyBase.Init. 
            ' Register the Event handler for any Events.
            Me.Page_InitializeEventHandlers_Base(sender, e)
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
            Me.Page_PreRender_Base(sender, e)
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
        
          Me.ClearControlsFromSession()
        End Sub

        Private Sub Base_RegisterPostback()
        
        End Sub

    

       ' Handles MyBase.Load.  Read database data and put into the UI controls.
       ' If you need to, you can add additional Load handlers in Section 1.
       Protected Overridable Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    
           Me.SetPageFocus()
    
            ' Check if user has access to this page.  Redirects to either sign-in page
            ' or 'no access' page if not. Does not do anything if role-based security
            ' is not turned on, but you can override to add your own security.
            Me.Authorize("NOT_ANONYMOUS")
    
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
        
        
            Page.Title = "Tổng quan"
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
            
    
#End Region


    End Class

End Namespace
