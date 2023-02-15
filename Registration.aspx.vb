Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class Registration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub calbdate_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles calbdate.SelectionChanged
        txtbdate.Text = calbdate.SelectedDate
    End Sub

    Protected Sub CustomValidator1_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim len As Integer = args.Value.Length
        If len = 10 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Try
            If IsValid Then
                Dim cmd As New SqlCommand("insert into tblusers(Name, Address, Birthdate, Gender, Hobbies, Age, Username, Password, ConfirmPassword, Email, Usertype, Mobileno) values(@name,@address,@bdate,@gender,@hobbies,@age,@username,@pwd,@cpwd,@email,@usertype,@mobileno)", con)
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = txtname.Text
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txtaddress.Text
                cmd.Parameters.Add("@bdate", SqlDbType.Date).Value = CDate(txtbdate.Text)
                Dim gender As String = ""
                If rdbfemale.Checked Then
                    gender = "Female"
                End If
                If rdbmale.Checked Then
                    gender = "Male"
                End If
                cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = gender
                Dim hobbies As String = ""
                If chkDance.Checked Then
                    hobbies = chkDance.Text
                End If
                If chkRead.Checked Then
                    hobbies = hobbies + " " + chkRead.Text
                End If
                If chkSwim.Checked Then
                    hobbies = hobbies + " " + chkSwim.Text
                End If
                cmd.Parameters.Add("@hobbies", SqlDbType.VarChar).Value = hobbies
                cmd.Parameters.Add("@age", SqlDbType.Int).Value = CInt(txtage.Text)
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = txtusername.Text
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = txtpwd.Text
                cmd.Parameters.Add("@cpwd", SqlDbType.VarChar).Value = txtcpwd.Text
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtemail.Text
                cmd.Parameters.Add("@usertype", SqlDbType.VarChar).Value = ddlusertype.Text
                cmd.Parameters.Add("@mobileno", SqlDbType.Decimal).Value = CDec(txtmobileno.Text)
                Dim q As Integer = 0
                con.Open()
                q = cmd.ExecuteNonQuery
                con.Close()
                If q > 0 Then
                    MsgBox("Registration Successful", MsgBoxStyle.Information, "Info")
                    Response.Redirect("login.aspx")
                Else
                    MsgBox("Registration is NOT Successful")
                End If
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txtname.Text = ""
        txtaddress.Text = ""
        txtage.Text = ""
        txtbdate.Text = ""
        txtcpwd.Text = ""
        txtemail.Text = ""
        txtmobileno.Text = ""
        txtpwd.Text = ""
        txtusername.Text = ""
        ddlusertype.SelectedIndex = 0
    End Sub
End Class
