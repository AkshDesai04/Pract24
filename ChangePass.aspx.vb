Imports System.Data.SqlClient

Public Class ChangePass
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim LIU As String = ""
        Dim result As String = ""
        Try
            LIU = Request.Cookies("LoggedInUser").Value
        Catch ex As Exception
            Try
                LIU = Session("LoggedInUser").ToString
            Catch exc As Exception
                Response.Write("Some Error Occured")
            End Try
        End Try

        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=CRUNCHER;Initial Catalog=Pract24;User ID=sa;Password=123456"
        Dim readCmd As String = "select Pass from Auth where UserID = '" & LIU & "'"
        Dim changeCmd As String = "update Auth set Pass = '" & TextBox2.Text & "' where UserID = '" & LIU & "'"

        Try
            con.Open()
            Dim cmd As New SqlCommand(readCmd, con)
            result = Convert.ToString(cmd.ExecuteScalar)
        Catch ex As Exception
            Response.Write("Connection closed" & ex.ToString)
        End Try

        If TextBox2.Text = TextBox3.Text Then
            If result = TextBox1.Text Then
                Dim ucmd As New SqlCommand(changeCmd, con)
                ucmd.ExecuteNonQuery()
            Else
                MsgBox("Wrong Password. Please Try Again")
            End If
        Else
            MsgBox("Please Make Sure password and Confirm Password are the same")
        End If
        con.Close()
    End Sub
End Class