Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=CRUNCHER;Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()

        Dim sql As String = "select pass from Auth where UserID = '" & TextBox1.Text & "'"
        Dim cmd As New SqlCommand(sql, con)
        Dim pass As String = Convert.ToString(cmd.ExecuteScalar)

        If pass.Equals("") Then
            Response.Write("User Not Found")
        End If

        If TextBox1.Equals("") Then
            Response.Write("Please Enter a user name")
        End If

        If TextBox2.Equals("") Then
            Response.Write("Please Enter a password")
        End If

        If pass.Equals(TextBox2.Text) Then
            Response.Write("ok")
        Else
            Response.Write("not ok")
        End If
    End Sub
End Class