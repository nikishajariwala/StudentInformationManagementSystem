
Partial Class StudentMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Response.Redirect("Index.aspx")
    End Sub

    Protected Sub ibtnhome_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ibtnhome.Click
        Response.Redirect("StudentHome.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbluname.Text = Session("uname")
    End Sub
End Class

