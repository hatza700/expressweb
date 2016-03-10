
Partial Class DashBoard_test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txt_motangan.config.toolbar = New Object() { _
         New Object() {"Undo", "Redo"} _
         , New Object() {"Bold", "Italic", "Underline", "Strike", "Subscript", "Superscript"} _
         , New Object() {"TextColor", "BGColor"} _
         , New Object() {"NumberedList", "BulletedList"} _
         , New Object() {"JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock"} _
         , New Object() {"Outdent", "Indent", "Blockquote"} _
         , New Object() {"Link", "Unlink", "Anchor"} _
         , New Object() {"BidiLtr", "BidiRtl"} _
         , "/" _
         , New Object() {"Image", "Flash", "Table", "HorizontalRule", "SpecialChar", "PageBreak", "Iframe"} _
         , New Object() {"Styles", "Format", "Font", "FontSize"}, _
         New Object() {"Cut", "Copy", "Paste", "PasteText", "PasteFromWord"} _
         }
    End Sub
End Class
