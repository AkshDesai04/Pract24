Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=CRUNCHER;Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()

        Dim ad As New SqlDataAdapter("select * from Auth where UserID='" & TextBox1.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            'Code If User is found
            Dim sql As String = "select Pass from Auth where UserID = '" & TextBox1.Text & "'"
            Dim cmd As New SqlCommand(sql, con)
            Dim DB_Pass As String = Convert.ToString(cmd.ExecuteScalar)
            If TextBox2.Text.Equals(DB_Pass) Then
                Response.Write("login Successful")
            Else
                Response.Write("login UNSuccessful")
            End If
        Else
            'Code If User is not found
            Response.Write("User Not Found")
        End If
        con.Close()
    End Sub
End Class