﻿Imports System.Data.SqlClient

Public Class CreateBlog
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim UserID As String = ""

        Try
            UserID = Request.Cookies("LoggedInUser").Value
        Catch ex As Exception
            Try
                UserID = Session("LoggedInUser").ToString
            Catch exc As Exception
                MsgBox("Some Error Occured")
            End Try
        End Try

        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=CRUNCHER;Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()


        Dim num As Integer
        Dim PostID As String
        Dim cmd1 As New SqlCommand("Select MAX(PostID) from Post", con)
        PostID = Convert.ToString(cmd1.ExecuteScalar)
        num = CInt(PostID.Substring(1)) + 1
        PostID = "P"
        While PostID.Length + num.ToString.Length < 10
            PostID = PostID & "0"
        End While
        PostID = PostID + num.ToString

        Dim cmd As New SqlCommand("INSERT INTO Post VALUES ('" & PostID & "', '" & UserID & "', GETDATE(), '" & TextBox1.Text & "', '" & TextArea1.Value & "')", con)
        'Response.Write("INSERT INTO Post VALUES ('P000000001', '" & UserID & "', GETDATE(), '" & TextBox1.Text & "', '" & TextArea1.Value & "')")
        cmd.ExecuteNonQuery()
    End Sub
End Class