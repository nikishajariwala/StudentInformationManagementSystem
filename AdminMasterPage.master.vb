
Partial Class AdminMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub lbtnhome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnhome.Click
        Response.Redirect("AdminHome.aspx")
    End Sub

    Protected Sub lbtnviewfaculty_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnviewfaculty.Click
        Response.Redirect("ViewFaculty.aspx")
    End Sub

    Protected Sub lbtnfeedback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnfeedback.Click
        Response.Redirect("ViewFeedback.aspx")
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Response.Redirect("Index.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbluname.Text = Session("uname")
    End Sub
End Class

