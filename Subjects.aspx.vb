
Partial Class Subjects
    Inherits System.Web.UI.Page

    Protected Sub btnConfirm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConfirm.Click
        Dim sub1 As String = ""
        For Each lstitm As ListItem In chklSubjects.Items
            If lstitm.Selected = True Then
                sub1 = sub1 + " " + lstitm.Text
            End If
        Next
        sub1 = sub1 + "</br>" + rbdlSUbjects.SelectedItem.Text
        Literal1.Text = sub1
    End Sub
End Class
