Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class Feedback
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub btnFeedback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFeedback.Click
        Try
            Dim cmd As New SqlCommand("insert into tblfeedback values(@email,@feedback)", con)
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtemail.Text
            cmd.Parameters.Add("@feedback", SqlDbType.VarChar).Value = txtfeedback.Text
            con.Open()
            Dim q As Integer
            q = cmd.ExecuteNonQuery
            con.Close()
            If q > 0 Then
                MsgBox("Record Inserted")
            Else
                MsgBox("Record NOT Inserted")
            End If
            txtemail.Text = ""
            txtfeedback.Text = ""
            DisplayFeedback()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Sub DisplayFeedback()
        Try
            Dim cmd As New SqlCommand("select * from tblfeedback", con)
            Dim da As New SqlDataAdapter(cmd)
            Dim ds As New DataSet
            da.Fill(ds, "Feedback")
            gvFeedback.DataSource = ds.Tables("Feedback")
            gvFeedback.DataBind()
            'Me.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DisplayFeedback()
    End Sub
End Class
