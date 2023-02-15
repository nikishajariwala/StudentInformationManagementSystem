Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class Login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            Dim cmd As New SqlCommand("select count(*) from tblusers where username=@u and Password=@p And Usertype=@t", con)
            cmd.Parameters.Add("@u", SqlDbType.VarChar).Value = txtuname.Text
            cmd.Parameters.Add("@p", SqlDbType.VarChar).Value = txtpwd.Text
            cmd.Parameters.Add("@t", SqlDbType.VarChar).Value = lstUtype.Text
            Dim cnt As Integer = 0
            con.Open()
            cnt = CInt(cmd.ExecuteScalar)
            con.Close()
            If cnt = 1 Then
                Session("uname") = txtuname.Text
                If lstUtype.Text = "Student" Then
                    Response.Redirect("StudentHome.aspx")
                ElseIf lstUtype.Text = "Faculty" Then
                    Response.Redirect("FacultyHome.aspx")
                ElseIf lstUtype.Text = "Admin" Then
                    Response.Redirect("AdminHome.aspx")
                End If
            Else
                MsgBox("User Does not Exists")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try

    End Sub
End Class
