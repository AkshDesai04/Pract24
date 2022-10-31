Imports System.Data.SqlClient

Public Class AdminPanel
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DeleteButton_Click(sender As Object, e As EventArgs) Handles DeleteButton.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=CRUNCHER;Initial Catalog=Pract24;User ID=sa;Password=123456"
        Dim delUserCmd As String = "delete from Auth where UserID = '" & TextBox1.Text & "'"
        Dim delPostsCmd As String = "delete from Posts where UserID = '" & TextBox1.Text & "'"

        Try
            con.Open()
            Dim DUC As New SqlCommand(delUserCmd, con)
            Dim DPC As New SqlCommand(delPostsCmd, con)
            DUC.ExecuteNonQuery()
            If CheckBox1.Checked Then
                DPC.ExecuteNonQuery()
            End If
            MsgBox("Done")
        Catch ex As Exception
            Response.Write("Connection closed" & ex.ToString)
        End Try
        con.Close()
    End Sub
End Class