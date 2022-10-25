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
    End Sub
End Class