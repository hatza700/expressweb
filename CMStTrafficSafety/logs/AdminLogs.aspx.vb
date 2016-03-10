
' This file implements the code-behind class for AdminLogs.aspx.
' App_Code\AdminLogs.Controls.vb contains the Table, Row and Record control classes
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

Imports CMStTrafficSafety.Business
Imports CMStTrafficSafety.Data
Imports System.IO


#End Region


Namespace CMStTrafficSafety.UI

    Partial Public Class AdminLogs
        Inherits BaseApplicationPage
        ' Code-behind class for the AdminLogs page.
        ' Place your customizations in Section 1. Do not modify Section 2.

#Region "Section 1: Place your customizations here."

#Region "CUSTOMIZE"
#Region "DECLARE"

        Private objfolder As Tracking
        Private objtime As times
        Private d As Date
        Private strhtml As String
        Private tbldata As DataTable
        Private newdir As String
        Private intvalue As Integer
        Private _folder_name_year As String
        Private _folder_name_month As String
        Private _day As String
        Private _filename As String
        Private bolvalue As Boolean
        Const count_row As Integer = 10000
        Private _Count As Integer

        Private ArrayFileName() As String
        Private IndexFilename As Integer = 0

        Private ArrayFilelog() As String
        Private indexlog As Integer = 0

        Private ArrayDate() As Date
        Private indexarraydate As Integer = 0

        Private Dirs As DirectoryInfo()
        Private DirectoryName As DirectoryInfo
        Private dirInfo As DirectoryInfo
        Private fi As System.IO.FileInfo
        Private Root As DirectoryInfo

        Private i As Integer = 0
        Private intTotalRecord As Integer = 0
        Const TotalRecord As Integer = 1000
#End Region
        Private Sub CreateArrayDate()

            If ArrayFileName IsNot Nothing Then
                If ArrayFileName.Length > 0 Then
                    i = 0
                    While i < ArrayFileName.Length
                        Dim strtmp As String = ArrayFileName(i).ToString.Trim
                        Dim d As Date
                        d = New Date
                        Dim StrForConvert As String
                        StrForConvert = StringToFormatDateString(strtmp)
                        d = ConverStringtoDate(StrForConvert)
                        AddArrrayDate(d)
                        i = i + 1
                    End While
                End If
            Else : End If


        End Sub
        Private Function StringToFormatDateString(ByVal inputstr As String) As String

            Dim s(1) As String
            s = inputstr.ToString.Split(".")
            Dim ss(2) As String
            ss = s(0).Split("_")
            Return ss(3) & "/" & ss(2) & "/" & ss(4)
        End Function
        Public Shared Function ConverStringtoDate(ByVal dateString As String) As Date
            Return Date.Parse(dateString)
        End Function

        Sub BubbleSort(ByRef arr() As Date)

            Dim i, j, n As Integer

            Dim stri, strj, Strtmp As String

            Dim keyi As Date

            Dim keyj As Date
            Dim key As Date



            i = 0
            n = arr.Length

            While i < n - 1
                j = i + 1
                While j < n


                    stri = ArrayDate(i).ToString
                    keyi = New Date
                    keyi = ConverStringtoDate(stri)

                    strj = ArrayDate(j).ToString
                    keyj = New Date
                    keyj = ConverStringtoDate(strj)

                    Dim result As Integer = DateTime.Compare(keyj, keyi)

                    If result > 0 Then

                        Strtmp = ArrayFilelog(i).ToString
                        Dim a As String = ArrayFilelog(j).ToString
                        ArrayFilelog(i) = a
                        ArrayFilelog(j) = Strtmp
                        key = keyi
                        ArrayDate(i) = keyj
                        ArrayDate(j) = key

                    End If

                    j = j + 1
                End While
                i = i + 1
            End While
        End Sub

        Private Sub working_with_file_logs()

            GetAllFileName()

            CreateArrayDate()

            If ArrayDate IsNot Nothing Then
                BubbleSort(ArrayDate)


            Else : End If


            If ArrayFilelog IsNot Nothing Then
                If ArrayFilelog.Length > 0 Then
                    '  Me.Page.Response.Write(ArrayFilelog.Length.ToString)
                    i = 0
                    While i < ArrayFilelog.Length

                        Dim j, dem As Integer
                        j = 0
                        dem = 0
                        j = getrowcount(ArrayFilelog(i).ToString)
                        While dem < j
                            If intTotalRecord < TotalRecord Then
                                intTotalRecord = intTotalRecord + 1
                                Dim newCustomersRow As DataRow = tbldata.NewRow()
                                Dim x As String = get_Data_by_row(ArrayFilelog(i).ToString, dem)
                                If get_time_access(x).Length > 0 Then
                                    newCustomersRow("times") = get_time_access(x)
                                Else
                                End If

                                If get_link_access(x).Length > 0 Then
                                    newCustomersRow("links") = get_link_access(x)
                                Else
                                End If

                                If get_ip_access(x).Length > 0 Then
                                    newCustomersRow("Ips") = get_ip_access(x)
                                Else
                                End If




                                If get_user(x).Length > 0 Then
                                    newCustomersRow("remotename") = get_user(x)
                                Else
                                End If
                                If get_time_access(x).Length > 0 Then
                                    tbldata.Rows.Add(newCustomersRow)
                                Else
                                End If
                            Else : End If
                            dem = dem + 1
                        End While

                        i = i + 1
                    End While

                End If
            End If

        End Sub
        Private Function getrowcount(ByVal sFilename As String) As Integer
            Dim strtmp As String = ""
            Dim k As Integer = 0
            Dim sFileReader As System.IO.StreamReader
            sFileReader = System.IO.File.OpenText(sFilename)
            If Dir(sFilename.ToString) <> "" Then

                Dim sInputLine As String = "" ' = sFileReader.ReadLine()
                Do Until sInputLine Is Nothing

                    sInputLine = sFileReader.ReadLine()
                    k = k + 1
                Loop
            End If
            sFileReader.Close()
            Return k - 1
        End Function

        Private Function get_Data_by_row(ByVal sFilename As String, ByVal int_i As Integer) As String
            Dim strtmp As String = ""
            Dim k As Integer = 0
            Dim sFileReader As System.IO.StreamReader
            sFileReader = System.IO.File.OpenText(sFilename)
            Dim sInputLine As String = "" ' sFileReader.ReadLine()
            If Dir(sFilename.ToString) <> "" Then

                Do Until sInputLine Is Nothing
                    strtmp = sFileReader.ReadLine()
                    If k = int_i Then
                        ' strtmp = sFileReader.ReadLine()
                        sFileReader.Close()
                        Exit Do
                    ElseIf k <> int_i Then
                        strtmp = ""
                    End If
                    k = k + 1
                Loop
                sFileReader.Close()
            End If

            Return strtmp
        End Function
        Private Function get_time_access(ByVal strdata As String) As String
            Dim strtmp(5) As String
            If strdata IsNot Nothing Then
                If strdata.Length > 0 Then
                    strtmp = strdata.Split("|")
                Else
                    strtmp(0) = ""
                End If
            Else
                strtmp(0) = ""
            End If
            Return strtmp(0).ToString

        End Function

        Private Function get_ip_access(ByVal strdata As String) As String
            Dim strtmp(5) As String
            If strdata IsNot Nothing Then
                If strdata.Length > 0 Then
                    strtmp = strdata.Split("|")
                Else
                    strtmp(1) = ""
                End If
            Else
                strtmp(1) = ""
            End If
            Return strtmp(1).ToString
        End Function

        Private Function get_link_access(ByVal strdata As String) As String
            Dim strtmp(5) As String
            If strdata IsNot Nothing Then
                If strdata.Length > 0 Then
                    strtmp = strdata.Split("|")
                Else
                    strtmp(5) = ""
                End If
            Else
                strtmp(5) = ""
            End If
            Return strtmp(5).ToString
        End Function

        Private Function get_user(ByVal strdata As String) As String
            Dim strtmp(5) As String
            If strdata IsNot Nothing Then
                If strdata.Length > 0 Then
                    strtmp = strdata.Split("|")
                Else
                    strtmp(4) = ""
                End If
            Else
                strtmp(4) = ""
            End If
            '  Me.Page.Response.Write(strtmp(4))
            Return strtmp(4).ToString
        End Function

        Private Sub GetAllFileName()
            newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/" & _folder_name_year & "/")
            ' Me.Page.Response.Write(newdir)
            Root = New DirectoryInfo(newdir)

            Dirs = Root.GetDirectories("*.*")

            _Count = 0

            If Dirs.Length > 0 Then
                _Count = Dirs.Length - 1
            Else
                _Count = 0
            End If

            While _Count >= 0
                DirectoryName = Dirs(_Count)

                dirInfo = New DirectoryInfo(newdir)

                newdir = DirectoryName.FullName

                dirInfo = New DirectoryInfo(newdir)

                For Each fi In dirInfo.GetFiles("*.log")
                    AddArrayFileName(New String(fi.Name.ToString.Trim))
                    AddFileLogs(newdir & "/" & fi.Name.ToString.Trim)

                Next
                _Count = _Count - 1
            End While


        End Sub
        Public Sub AddFileLogs(ByVal stringToAdd As String)

            ReDim Preserve ArrayFilelog(indexlog)
            ArrayFilelog(indexlog) = stringToAdd
            indexlog += 1
        End Sub
        Public Sub New()
            objtime = New times
            objfolder = New Tracking
            _folder_name_year = objtime.current_year.ToString.Trim
            _folder_name_month = objtime.current_month.ToString.Trim
            _day = objtime.current_day
            _filename = "tracking_visitors" & "_" & _day & "_" & _folder_name_month & "_" & _folder_name_year & ".log"
            bolvalue = Nothing
            newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
            tbldata = New DataTable("tracking")

            Dim Name As DataColumn = New DataColumn("times")
            'declaring a column named Name
            Name.DataType = System.Type.GetType("System.String")
            'setting the datatype for the column
            tbldata.Columns.Add(Name)
            'adding the column to table

            Dim remotename As DataColumn = New DataColumn("remotename")
            remotename.DataType = System.Type.GetType("System.String")
            tbldata.Columns.Add(remotename)

            Dim Product As DataColumn = New DataColumn("Ips")
            Product.DataType = System.Type.GetType("System.String")
            tbldata.Columns.Add(Product)
            Dim Location As DataColumn = New DataColumn("links")
            Location.DataType = System.Type.GetType("System.String")
            tbldata.Columns.Add(Location)

        

        End Sub
        'ham de quy them 1 phan tu vao 1 mang
        Public Sub AddArrayFileName(ByVal stringToAdd As String)

            ReDim Preserve ArrayFileName(IndexFilename)
            ArrayFileName(IndexFilename) = stringToAdd
            IndexFilename += 1
        End Sub
        Public Sub AddArrrayDate(ByVal stringToAdd As Date)

            ReDim Preserve ArrayDate(indexarraydate)
            ArrayDate(indexarraydate) = stringToAdd
            indexarraydate += 1
        End Sub
#Region "DATAGRIDVIEW EVENT"

        Private Sub Binddata()
            If tbldata.Rows.Count = 0 Then
                Dim row As DataRow = tbldata.NewRow
                row = tbldata.NewRow
                row("times") = "Hiện chưa có dữ liệu  cho mục này"


                tbldata.Rows.Add(row)
                Me.GridView11.Columns(1).Visible = False
                Me.GridView11.Columns(2).Visible = False

                Me.GridView11.DataSource = tbldata
                Me.GridView11.DataBind()
                'Response.Write("asadasdasc")

            ElseIf tbldata.Rows.Count > 0 Then



                Me.GridView11.DataSource = tbldata
                Me.GridView11.DataBind()





            End If
        End Sub

        Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView11.PageIndexChanging

            Try
                ' Me.Page.Response.Write(e.NewPageIndex.ToString)
                Me.GridView11.PageIndex = e.NewPageIndex
                Binddata()
                Me.GridView11.DataBind()
            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try




        End Sub
        Protected Sub Gridview1_Sorting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSortEventArgs) Handles GridView11.Sorting

        End Sub

        Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
            If e.CommandName = "Delete" Then
                Dim categoryID As Integer = Convert.ToInt32(e.CommandArgument)
                ' Delete the record 


            End If

        End Sub
        Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
            If e.Row.RowType = DataControlRowType.DataRow Then
                'Dim l As Literal = DirectCast(e.Row.FindControl("lite_1"), Literal)
                Dim x As String = ""

                If tbldata.Rows.Count > 0 Then


                    Try
                        x = DataBinder.Eval(e.Row.DataItem, "times").ToString
                        If x.Length > 0 Then
                            Dim s(2) As String
                            s = x.Split("/")

                            'l.Text = s(1) + "/" + s(0) + "/" + s(2).ToString
                            e.Row.Cells(0).Text = s(1) + "/" + s(0) + "/" + s(2).ToString
                            e.Row.Cells(3).Text = DataBinder.Eval(e.Row.DataItem, "Ips").ToString
                            e.Row.Cells(1).Text = DataBinder.Eval(e.Row.DataItem, "remotename").ToString
                            e.Row.Cells(2).Text = DataBinder.Eval(e.Row.DataItem, "links").ToString
                            'remotename

                        Else
                        End If
                    Catch ex As Exception

                    End Try

                Else

                End If
                'l.Text = lite_1
                '

                '
                'If x = True Then
                '    e.Row.Cells(4).Visible = False
                'End If
            End If



        End Sub
        Protected Sub GridView1_RowDeleted(ByVal sender As Object, ByVal e As GridViewDeletedEventArgs)

        End Sub
        Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)


        End Sub


#End Region
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
            Try

                Binddata()
            Catch ex As Exception
                Me.Page.Response.Write(ex.ToString)
            End Try

        End Sub

        Private Function EvaluateFormula(ByVal formula As String, ByVal dataSourceForEvaluate As BaseClasses.Data.BaseRecord, ByVal format As String, ByVal variables As System.Collections.Generic.IDictionary(Of String, Object), ByVal includeDS As Boolean) As String
            Return EvaluateFormula_Base(formula, dataSourceForEvaluate, format, variables, includeDS)
        End Function

        Public Sub Page_InitializeEventHandlers(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Init
            ' Handles MyBase.Init. 
            ' Register the Event handler for any Events.
            Me.Page_InitializeEventHandlers_Base(sender, e)
            working_with_file_logs()
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
        
        
            Page.Title = "Admin log statics"
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
