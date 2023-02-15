
Partial Class FacultyMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbluname.Text = Session("uname")
    End Sub
End Class

