
#Region "Imports statements"

Imports System
Imports System.Web.UI.WebControls
Imports System.ComponentModel
Imports BaseClasses
Imports BaseClasses.Data
Imports BaseClasses.Utils
Imports BaseClasses.Web.UI.WebControls
Imports System.Xml
Imports CMStTrafficSafety.Business
Imports CMStTrafficSafety.Data
Imports System.Data
Imports System.Collections.Generic

#End Region

Namespace CMStTrafficSafety.UI

    ' Code-behind class for the Menu user control.
    Partial Public Class Menu
        Inherits BaseApplicationMenuControl
        Implements IMenu
#Region "Section 1: Place your customizations here."

#Region "DECLARE"

        Dim _CMENU As CMENU.CMENU

        Dim _CMS_APP_NAME As String

        Dim _CMS_CODE As CMS_SHARED
 




#End Region

        Public Sub LoadData()
            ' LoadData reads database data and assigns it to UI controls.
            ' Customize by adding code before or after the call to LoadData_Base()
            ' or replace the call to LoadData_Base().
           
            ' SET_load_CSS_AND_SCRIPT_EFINDER()
        End Sub

#Region "CUSTOMIZE"
        ''' <summary>
        ''' 
        ''' </summary>
        ''' <remarks></remarks>
        Private Sub SET_ACCORDION_MENU()

            _CMS_CODE = New CMS_SHARED

            _CMS_APP_NAME = _CMS_CODE.CMS_APP_NAME


            'Add javascript for the header
            Dim header As LiteralControl
            Dim oCSS As HtmlGenericControl


            '<!-- Demo page js and css files -->

			' header = New LiteralControl
           ' header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Customize_style/untitled_E.js""></script>"
          '  Me.Page.Header.Controls.Add(header)
			
            oCSS = New HtmlGenericControl
            oCSS.TagName = "link"
            oCSS.Attributes.Add("href", _CMS_APP_NAME + "Customize_style/navago/demo/demo.css")
            oCSS.Attributes.Add("rel", "stylesheet")
            oCSS.Attributes.Add("type", "text/css")
            ' Me.Page.Header.Controls.Add(oCSS)

			'   header = New LiteralControl
          '  header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Styless/jquery-1.4.2.min.js""></script>"
           ' Me.Page.Header.Controls.Add(header)

			'	 header = New LiteralControl
           ' header.Text = "<script>jQuery.noConflict();</script>"
           ' Me.Page.Header.Controls.Add(header)
			
            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Customize_style/navago/demo/jquery-1.10.2.min.js""></script>"
            Me.Page.Header.Controls.Add(header)

            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Customize_style/navago/demo/highlight.pack.js""></script>"
            Me.Page.Header.Controls.Add(header)

            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Customize_style/navago/demo/demo.js""></script>"
            Me.Page.Header.Controls.Add(header)

            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "Customize_style/navago/src/jquery.navgoco.js""></script>"
            Me.Page.Header.Controls.Add(header)

			' header = New LiteralControl
           ' header.Text = "<script>jQuery.noConflict();</script>"
           ' Me.Page.Header.Controls.Add(header)
			
            oCSS = New HtmlGenericControl
            oCSS.TagName = "link"
            oCSS.Attributes.Add("href", _CMS_APP_NAME + "Customize_style/navago/src/jquery.navgoco.css")
            oCSS.Attributes.Add("rel", "stylesheet")
            oCSS.Attributes.Add("type", "text/css")
            Me.Page.Header.Controls.Add(oCSS)

        End Sub

    

		private sub navigation()
			Dim str as String=""
		str+="<div class=""container-fluid"">"
			str+="<div class=""navbar-header"">"
				str+="<button type=""button"" class=""navbar-toggle collapsed"" data-toggle=""collapse"" data-target=""#sidebar-collapse"">"
					str+="<span class=""sr-only"">Toggle navigation</span>"
					str+="<span class=""icon-bar""></span>"
					str+="<span class=""icon-bar""></span>"
					str+="<span class=""icon-bar""></span>"
				str+="</button>"
				str+="<a class=""navbar-brand"" href=""#""><span>Lumino</span>Admin</a>"
				str+="<ul class=""user-menu"">"
					str+="<li class=""dropdown pull-right"">"
						str+="<a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown""><span class=""glyphicon glyphicon-user""></span> User <span class=""caret""></span></a>"
						str+="<ul class=""dropdown-menu"" role=""menu"">"
							str+="<li><a href=""#""><span class=""glyphicon glyphicon-user""></span> Profile</a></li>"
							str+="<li><a href=""#""><span class=""glyphicon glyphicon-cog""></span> Settings</a></li>"
							str+="<li><a href=""#""><span class=""glyphicon glyphicon-log-out""></span> Logout</a></li>"
						str+="</ul>"
					str+="</li>"
				str+="</ul>"
			str+="</div>"
		str+="</div>"
			'me.lit_nav.text=str
		end sub
        
        Private Sub SET_load_CSS_AND_SCRIPT_EFINDER()
            _CMS_CODE = New CMS_SHARED

            _CMS_APP_NAME = _CMS_CODE.CMS_APP_NAME


            'Add javascript for the header
            Dim header As LiteralControl
            Dim oCSS As HtmlGenericControl

            'oCSS = New HtmlGenericControl
            'oCSS.TagName = "link"
            'oCSS.Attributes.Add("href", _CMS_APP_NAME + "elfinder/elFinder-2.0/css/elfinder.min.css")
            'oCSS.Attributes.Add("rel", "stylesheet")
            'oCSS.Attributes.Add("type", "text/css")
            'Me.Page.Header.Controls.Add(oCSS)

            'oCSS = New HtmlGenericControl
            'oCSS.TagName = "link"
            'oCSS.Attributes.Add("href", _CMS_APP_NAME + "elfinder/elFinder-2.0/css/theme.css")
            'oCSS.Attributes.Add("rel", "stylesheet")
            'oCSS.Attributes.Add("type", "text/css")
            'Me.Page.Header.Controls.Add(oCSS)

            'header = New LiteralControl
            'header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "elfinder/js/jquery-1.4.1.min.js""></script>"
            'Me.Page.Header.Controls.Add(header)
            ''          <script src="js/jquery-1.4.1.min.js" type="text/javascript" charset="utf-8"></script>

            'header = New LiteralControl
            'header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "elfinder/js/jquery-ui-1.7.2.custom.min.js""></script>"
            'Me.Page.Header.Controls.Add(header)
            '    <script src="../elfinder/js/jquery-ui-1.7.2.custom.min.js" type="text/javascript" charset="utf-8"></script>


            oCSS = New HtmlGenericControl
            oCSS.TagName = "link"
            oCSS.Attributes.Add("href", _CMS_APP_NAME + "elfinder/js/ui-themes/base/ui.all.css")
            oCSS.Attributes.Add("rel", "stylesheet")
            oCSS.Attributes.Add("type", "text/css")
            Me.Page.Header.Controls.Add(oCSS)
            '    <link rel="stylesheet" href="../elfinder/js/ui-themes/base/ui.all.css" type="text/css" media="screen" charset="utf-8">

            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "elfinder/js/elfinder.full.js""></script>"
            Me.Page.Header.Controls.Add(header)
            '    <script src="../elfinder/js/elfinder.full.js" type="text/javascript" charset="utf-8"></script>

            oCSS = New HtmlGenericControl
            oCSS.TagName = "link"
            oCSS.Attributes.Add("href", _CMS_APP_NAME + "elfinder/css/elfinder.css")
            oCSS.Attributes.Add("rel", "stylesheet")
            oCSS.Attributes.Add("type", "text/css")
            Me.Page.Header.Controls.Add(oCSS)
            '    <link rel="stylesheet" href="../elfinder/elfinder/css/elfinder.css" type="text/css" media="screen" charset="utf-8">

            header = New LiteralControl
            header.Text = "<script type=""text/javascript""     src=""" + _CMS_APP_NAME + "elfinder/js/i18n/elfinder.es.js""></script>"
            Me.Page.Header.Controls.Add(header)
            '    <script src="../elfinder/js/i18n/elfinder.es.js" type="text/javascript" charset="utf-8"></script>
            header = New LiteralControl
            header.Text = "<script type=""text/javascript"" charset=""utf-8"">" + vbCrLf
            header.Text += "jQuery(document).ready(function() {" + vbCrLf
            header.Text += " Try" + vbCrLf
            header.Text += "{" + vbCrLf
            header.Text += "jQuery('#finder').elfinder({" + vbCrLf
            header.Text += " url:            'test.connector'," + vbCrLf
            header.Text += " lang:           'es' " + vbCrLf
            header.Text += " });" + vbCrLf
            header.Text += "}" + vbCrLf
            header.Text += " catch(ex)" + vbCrLf
            header.Text += " { alert(ex);}" + vbCrLf
            header.Text += "}); </script>" + vbCrLf
            Me.Page.Header.Controls.Add(header)
            
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
            If (Not Me.IsPostBack OrElse Me.Request("__EVENTTARGET") = "ChildWindowPostBack") Then
                LoadData_Base()

                SET_ACCORDION_MENU()

                redrawing_menu_follow_role()

                navigation()
            Else
                LoadData_Base()

                SET_ACCORDION_MENU()

                redrawing_menu_follow_role()

                navigation()
            End If
        End Sub

        Private Sub redrawing_menu_follow_role()
            Dim _MultiLevelMenu As WebControls.Menu = Me.MultiLevelMenu

            _MultiLevelMenu.Visible = False

            _CMENU = New CMENU.CMENU()
            If Me.Session("fff") IsNot Nothing = True Then

                Dim role As String = BaseClasses.Utils.SecurityControls.GetCurrentUserRoles()

              
                _CMENU.menus("../Menu Panels/Menu.sitemap", Me.lit_menu, role)

            Else
              
                Me.lit_menu.Text = "<div class=""hasihuyen_menu"">&nbsp;" + "</div>"

            End If
            

        End Sub

        '===========================================================================================













        '=============================================================================================

        Public Overrides Sub SetChartControl(ByVal chartCtrlName As String)
            Me.SetChartControl_Base(chartCtrlName)
        End Sub


        Public Sub ModifyMenuItem(ByVal sender As Object, ByVal e As MenuEventArgs)
            ModifyMenuItem_Base(sender, e)
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
                  
    
            ' the following code for accordion is necessary or the Me.{ControlName} will return Nothing
        
            ' Register the Event handler for any Events.
      
            ' Add handler for Menu item data bound event
            AddHandler MultiLevelMenu.MenuItemDataBound, AddressOf Me.ModifyMenuItem
        

          ' Setup the pagination events.
        
          Me.ClearControlsFromSession()
        End Sub

        Private Sub Base_RegisterPostback()
        
        End Sub

    

       ' Handles MyBase.Load.  Read database data and put into the UI controls.
       ' If you need to, you can add additional Load handlers in Section 1.
       Protected Overridable Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    
    
            If (Not Me.IsPostBack) Then
            
            End If
            

            ' Load data only when displaying the page for the first time or if postback from child window
            If (Not Me.IsPostBack OrElse Me.Request("__EVENTTARGET") = "ChildWindowPostBack") Then
                ' Read the data for all controls on the page.
                ' To change the behavior, override the DataBind method for the individual
                ' record or table UI controls.
                Me.LoadData()
            End If
        
        
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


        Public Sub ModifyMenuItem_Base(ByVal sender As Object, ByVal e As MenuEventArgs)
            ' Retrieve menu item's text and tool tip value from RESX file.
            e.Item.Text = ReplaceTextWithResourceValue(e.Item.Text)
            e.Item.ToolTip = ReplaceTextWithResourceValue(e.Item.ToolTip)
            ' If imageUrl is specified in the sitemap node then, display an image next to menu item.
            Dim imageUrl As String = CType(e.Item.DataItem, System.Web.SiteMapNode)("imageUrl")
            If ((Not (imageUrl) Is Nothing) AndAlso Not imageUrl.Trim().Equals("")) Then
                e.Item.ImageUrl = imageUrl
            End If
        End Sub
        
        Private Function ReplaceTextWithResourceValue(ByVal value As String) As String
            Dim regex As System.Text.RegularExpressions.Regex = New System.Text.RegularExpressions.Regex("{")            
            ' Check if a part of value is surrounded with {} eg: {Menu:Add}
            While regex.IsMatch(value)
                Dim startIndex As Integer = (regex.Match(value).Index + regex.Match(value).Length)
                If System.Text.RegularExpressions.Regex.IsMatch(value, "}") Then
                    Dim endIndex As Integer = System.Text.RegularExpressions.Regex.Match(value, "}").Index
                    Dim textToLookUp As String = value.Substring(startIndex, (endIndex - startIndex))
                    ' Replace text including {} with value retreived from resex file
                    value = value.Replace(value.Substring((startIndex - 1), ((endIndex - startIndex) + 2)), GetResourceValue(textToLookUp, "CMStTrafficSafety"))
                End If
                
            End While
            Return value
        End Function


    
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
        
        #Region "Interface Properties"
        
        <Bindable(True), _
        Category("Behavior"), _
        DefaultValue(""), _
        NotifyParentProperty(True), _
        DesignerSerializationVisibility(DesignerSerializationVisibility.Content)> _
        Public ReadOnly Property PageTitle() As System.Web.UI.WebControls.Literal Implements IMenu.PageTitle
            Get
                Return CType(BaseClasses.Utils.MiscUtils.FindControlRecursively(Me, "_PageTitle"), System.Web.UI.WebControls.Literal)
            End Get
        End Property
                
      Public Overrides Property Visible() As Boolean Implements IMenu.Visible
  
          Get
              Return MyBase.Visible
          End Get
          Set(ByVal value As Boolean)
              MyBase.Visible = value
          End Set
      End Property
            
        #End Region
  
        Public Shadows ReadOnly Property Page() As BaseApplicationPage
            Get
                Return DirectCast(MyBase.Page, BaseApplicationPage)
            End Get
        End Property

            
    
#End Region



    End Class

End Namespace

