Imports System.Data.SqlClient

Public Class Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim LIU As String = ""
        Dim LIS As String = ""
        Try
            LIU = Request.Cookies("LoggedInUser").Value
            LIS = "Permanent user: "
        Catch ex As Exception
            Try
                LIU = Session("LoggedInUser").ToString
                LIS = "Temparory User: "
            Catch exc As Exception
                Response.Write("Some Error Occured")
            End Try
        End Try

        Label1.Text = LIS & LIU

        If LIU = "admin" Then
            Button2.Visible = True
        End If

        Dim dsn As String = "CRUNCHER"
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=" & dsn & ";Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()
        Dim sql As String = "select * from Posts order by PostID ASC"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader

        While rd.Read()
            Response.Write("<div class='PostDiv'>")
            Response.Write("<h3 id = 'PTitle'>" & rd("PostTitle") & "</h3>")
            Response.Write("<h5 id = 'UID'>" & rd("UserID") & "</h5>")
            Response.Write("</br>")
            Response.Write("<p id = 'PCont'>" & rd("PostContent") & "</p></br>")
            Response.Write("</div>")
            Response.Write("</br>")
        End While
    End Sub
End Class