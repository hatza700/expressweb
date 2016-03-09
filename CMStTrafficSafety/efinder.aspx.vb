
Partial Class efinder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim section = System.Configuration.ConfigurationManager.GetSection("ElFinder")

    End Sub
End Class
