<%@ Application Language="VB" %>
<%@import namespace="System" %>
<%@import namespace="System.data" %>
<%@import namespace="System.data.sqlclient" %>
<%@import namespace="System.IO" %>
<%@import namespace="System.Web" %>

<%@import namespace="tracking" %>
<%@import namespace="time" %>

<%--<%@ Assembly Name="Data.dll" %>--%>


<script runat="server">
    Private Newdir As String
    Private objfolder As Tracking
    Private objtime = New times
    Private intvalue As Integer
    Private _folder_name_year As String
    Private _folder_name_month As String
    Private _day As String
    Private _filename As String
    Private bolvalue As Boolean
    Const file_extension As String = ".log"
    Public strthml As String = ""
    
    
    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
        Application("ActiveUsers") = 0
        '  Newdir = System.Web.HttpContext.Current.Server.MapPath(".") + "../logstore/"
        
        ' System.Web.HttpContext.Current.Response.Write(Newdir.ToString)
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
        Application.Lock()
        Application("ActiveUsers") = CInt(Application("ActiveUsers")) - 1
      
        
        If objfolder.check_file_exist(Newdir, "online_visitors.log") = True Then
            bolvalue = True
            'Neu da ton tai file thi doc va luu
            Try
                Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
                objfolder.SaveTextToFile(Application("ActiveUsers").ToString, Newdir & "/" & "online_visitors.log")
            Catch ex As Exception
            End Try
        ElseIf objfolder.check_file_exist(Newdir, "online_visitors.log") = False Then
          
        End If
        Application.UnLock()
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_onStart(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
        
       
        
        _folder_name_year = objtime.current_year.ToString.Trim
        _folder_name_month = objtime.current_month.ToString.Trim
        _day = objtime.current_day
        _filename = "tracking_visitors" & "_" & _day & "_" & _folder_name_month & "_" & _folder_name_year & ".log"
        bolvalue = Nothing
        Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
       ' System.Web.HttpContext.Current.Response.Write(Newdir.ToString)
        objfolder = New Tracking
        'Tao thu muc theo nam , neu co thi bo qua
        intvalue = objfolder.create_folder(Newdir, _folder_name_year)
        'Tao thu muc theo thang neu co thi bo qua
        Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/" & _folder_name_year.Trim & "/")
        intvalue = objfolder.create_folder(Newdir, _folder_name_month)
      
        
        'tao file ghi tong so truy cap cho den thoi diem nay

        Application.Lock()
        Application("ActiveUsers") = CInt(Application("ActiveUsers")) + 1
        
        
        Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
        If objfolder.check_file_exist(Newdir, "total_visitors.log") = True Then
            bolvalue = True
            
            'Neu da ton tai file thi doc va luu
            Try
                Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
                Dim str_curent_visitor_count As String = objfolder.read_entire_file(Newdir & "total_visitors.log")
                Dim str_pre_visitor_count As String
                Dim pre_visitor_count As Integer
                Dim curent_visitor_count As Integer
                If str_curent_visitor_count.Length > 0 Then
                    str_pre_visitor_count = objfolder.read_entire_file(Newdir & "/" & "total_visitors.log")
                    pre_visitor_count = CType(str_pre_visitor_count, Integer)
                    curent_visitor_count = pre_visitor_count + 1
                    objfolder.SaveTextToFile((curent_visitor_count).ToString, Newdir & "/" & "total_visitors.log")
                ElseIf str_curent_visitor_count.Length = 0 Then
                    ' objfolder.SaveTextToFile(curent_visitor_count, Newdir & "/" & "total_visitors.log")
                End If
            Catch ex As Exception
                objfolder.SaveTextToFile(ex.ToString, Newdir & "/" & "total_visitors.log")
                Response.Write(ex.ToString)
            End Try
        ElseIf objfolder.check_file_exist(Newdir, "total_visitors.log") = False Then
            Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
            bolvalue = objfolder.create_file(Newdir, "total_visitors.log")
            objfolder.SaveTextToFile(1, Newdir & "total_visitors.log")
        End If
        'onlinevisiter
        Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
        If objfolder.check_file_exist(Newdir, "online_visitors.log") = True Then
            bolvalue = True
            'Neu da ton tai file thi doc va luu
            Try
                Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
                objfolder.SaveTextToFile(Application("ActiveUsers").ToString, Newdir & "/" & "online_visitors.log")
            Catch ex As Exception
            End Try
        ElseIf objfolder.check_file_exist(Newdir, "online_visitors.log") = False Then
            Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
            bolvalue = objfolder.create_file(Newdir, "online_visitors.log")
            objfolder.SaveTextToFile(Application("ActiveUsers").ToString, Newdir & "online_visitors.log")
        End If
        ''''''''''''''''''
        'Luu dia chi IP va cac thong so lien quan vao file
        Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/" & _folder_name_year & "/" & _folder_name_month & "/")
        _filename = "tracking_visitors" & "_" & _day & "_" & _folder_name_month & "_" & _folder_name_year & ".log"
        If objfolder.check_file_exist(Newdir, _filename) = True Then
            bolvalue = True
            ''Neu da ton tai file thi doc va luu
            'Try
            '    Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/" & _folder_name_year & "/" & _folder_name_month & "/")

            '    objfolder.tracking("", Newdir & _filename)
            'Catch ex As Exception
            'End Try
        ElseIf objfolder.check_file_exist(Newdir, _filename) = False Then
            'Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/" & _folder_name_year & "/" & _folder_name_month & "/")
            '_filename = "tracking_visitors" & "_" & _day & "_" & _folder_name_month & "_" & _folder_name_year & ".log"
            'bolvalue = objfolder.create_file(Newdir, _filename)
            'objfolder.tracking("", Newdir & _filename, "view", "")
        End If
        Application.UnLock()
    End Sub

    Sub Session_OnEnd(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
        
        Application.Lock()
        Application("ActiveUsers") = CInt(Application("ActiveUsers")) - 1
        
        
        If objfolder.check_file_exist(Newdir, "online_visitors.log") = True Then
            bolvalue = True
            'Neu da ton tai file thi doc va luu
            Try
                Newdir = System.Web.HttpContext.Current.Server.MapPath("../logstore/")
                objfolder.SaveTextToFile(Application("ActiveUsers").ToString, Newdir & "/" & "online_visitors.log")
            Catch ex As Exception
            End Try
        ElseIf objfolder.check_file_exist(Newdir, "online_visitors.log") = False Then
          
        End If
        Application.UnLock()
    End Sub
       
</script>