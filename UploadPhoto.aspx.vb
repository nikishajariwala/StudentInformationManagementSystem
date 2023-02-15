Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class UploadPhoto
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)
    Sub displayimage()
        Dim cmd As New SqlCommand("select photo from tblusers where username=@u", con)
        cmd.Parameters.Add("@u", SqlDbType.VarChar).Value = Session("uname")
        Dim img As String = ""
        con.Open()
        If Not cmd.ExecuteScalar Is System.DBNull.Value Then
            img = cmd.ExecuteScalar
        End If
        con.Close()
        Image1.ImageUrl = img
    End Sub
    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/images/" + FileUpload1.FileName)
        End If
        Dim cmd As New SqlCommand("update tblusers set photo=@p where username=@u", con)
        cmd.Parameters.Add("@u", SqlDbType.VarChar).Value = Session("uname")
        cmd.Parameters.Add("@p", SqlDbType.VarChar).Value = "~/images/" + FileUpload1.FileName
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        displayimage()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        displayimage()
    End Sub
End Class
