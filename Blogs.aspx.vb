Imports System.Data.SqlClient

Public Class Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim LIU, LIUStatus As String
        Try
<<<<<<< HEAD
            LIU = Request.Cookies("LoggedInUser").Value
            LIUStatus = "Permanent user: "
=======
            'Label1.Text = "Permanent user: " & Request.Cookies("LoggedInUser").Value
>>>>>>> fe69d33cc46fc9ffe5d23d4579d9742c31864c9b
        Catch ex As Exception
            Try
                LIU = Session("LoggedInUser").ToString
                LIUStatus = "Temparory User: "
            Catch exc As Exception
                Response.Write("Some Error Occured")
            End Try
        End Try

        Label1.Text = LIUStatus + LIU

        Dim dsn As String = "CRUNCHER"
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=" & dsn & ";Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()

        Dim sql As String = "select * from Posts order by PostID ASC"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader

        While rd.Read()
            Response.Write("<div class='PostDiv'>")

            'Response.Write(rd("PostID") & "</br>")
            'Response.Write(rd("UserID") & "</br>")
            'Response.Write(rd("DateTime") & "</br>")
            'Response.Write(rd("PostTitle") & "</br>")
            'Response.Write(rd("PostContent") & "</br>")


            Response.Write("<h3 id = 'PTitle'>" & rd("PostTitle") & "</h3>")
            Response.Write("<h5 id = 'UID'>" & rd("UserID") & "</h5>")
            Response.Write("</br>")
            Dim ph As New PlaceHolder
            ph.Controls.Clear()
            If LIU = "admin" Then
                'Response.Write("<asp:Button ID ='" & rd("PostID") & "DeleteB' runat = 'server' Text = '" & rd("PostID") & "DeleteB'/>")
                'Response.Write("<input type = 'button'/>")
                'Response.Write("Admin")
                Dim del As New LinkButton

                del.Text = rd("PostID") & "DelButton"
                del.ID = rd("PostID") & "DelButton"
                'del.OnClientClick("delFunc")
                'del.Attributes.Add("onclick", "del();")
                'ph.Add(del)

                del.CommandName = del.ID.ToString
                del.OnCommand = "delFunc"

                ph.Controls.Add(del)
                ph.Visible = True
                form1.Controls.Add(ph)
            End If
            Response.Write("<p id = 'PCont'>" & rd("PostContent") & "</p></br>")
            Response.Write("</div>")
            Response.Write("</br>")

            'Dim ph As PlaceHolder


        End While

        con.Close()
        DataBind()

<<<<<<< HEAD
    Protected Sub LogOut_Click(sender As Object, e As CommandEventArgs) Handles LogOut.Click
        Session.Abandon()
        Response.Cookies("LoggedInUser").Expires = DateTime.Now
=======
>>>>>>> fe69d33cc46fc9ffe5d23d4579d9742c31864c9b
    End Sub
End Class