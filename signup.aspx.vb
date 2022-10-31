Imports System.Data.SqlClient
Public Class signup
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dsn As String = "PRANALI-PC\SQLEXPRESS"
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=" & dsn & ";Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()

        Dim ad As New SqlDataAdapter("select * from Auth where UserID='" & TextBox1.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            MsgBox("Username already Taken. Please Try Another UserID")
        Else
            If TextBox2.Text.Equals(TextBox3.Text) Then
                Dim cmd As New SqlCommand("insert into Auth values('" & TextBox1.Text & "','" & TextBox2.Text & "')", con)
                cmd.ExecuteNonQuery()
            Else
                MsgBox("Passwords do not match. Please try again")
            End If
        End If
        con.Close()

        Response.Redirect("login.aspx")
    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate

    End Sub
End Class