Imports System.Data.SqlClient

Public Class Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Label1.Text = "Permanent user: " & Request.Cookies("LoggedInUser").Value
        Catch ex As Exception
            Try
                Label1.Text = "Temparory User: " & Session("LoggedInUser").ToString
            Catch exc As Exception
                Response.Write("Some Error Occured")
            End Try
        End Try

        Dim dsn As String = "CRUNCHER"
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=" & dsn & ";Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()

        Dim sql As String = "select * from Posts order by PostID ASC"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader

        While rd.Read()
            Response.Write("<div class='PostDiv'>")

            Response.Write(rd("PostID") & "</br>")
            Response.Write(rd("UserID") & "</br>")
            Response.Write(rd("DateTime") & "</br>")
            Response.Write(rd("PostTitle") & "</br>")
            Response.Write(rd("PostContent") & "</br>")
            Response.Write("</div>")
            Response.Write("</br></br></br></br></br></br>")
        End While

        con.Close()
        DataBind()
    End Sub

    Protected Sub LogOut_Click(sender As Object, e As EventArgs) Handles LogOut.Click
        Session.Abandon()
        Response.Cookies("LoggedInUser").Expires = DateTime.Now
    End Sub
End Class