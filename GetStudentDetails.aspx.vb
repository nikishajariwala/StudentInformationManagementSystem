Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class GetStudentDetails
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("Con").ConnectionString)

    Protected Sub btnrptage_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnrptage.Click
        Dim cmd As New SqlCommand("select * from tblusers where age>@age and usertype='Student'", con)
        cmd.Parameters.Add("@age", SqlDbType.Int).Value = CInt(txtage.Text)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "rptage")
        gvage.DataSource = ds.Tables("rptage")
        gvage.DataBind()
    End Sub

    Protected Sub btnrptgender_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnrptgender.Click
        Dim cmd As New SqlCommand("select * from tblusers where gender=@gender and usertype='Student'", con)
        cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = ddlgender.Text
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "rptgender")
        gvgender.DataSource = ds.Tables("rptgender")
        gvgender.DataBind()
    End Sub

    Protected Sub btnboth_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnboth.Click
        Dim cmd As New SqlCommand("select * from tblusers where age=@age and gender=@gender and usertype='Student'", con)
        cmd.Parameters.Add("@age", SqlDbType.Int).Value = CInt(txtbage.Text)
        cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = ddlbgender.Text
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "rptboth")
        gvboth.DataSource = ds.Tables("rptboth")
        gvboth.DataBind()
    End Sub

    Protected Sub lbtnrptAge_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnrptAge.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub lbtnrptgender_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnrptgender.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub lbtnrptBoth_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnrptBoth.Click
        MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub btnback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnback.Click
        MultiView1.ActiveViewIndex = -1
    End Sub
End Class
