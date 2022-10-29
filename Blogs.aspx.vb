Imports System.Data.SqlClient

Public Class Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Label1.Text = "Permanent user: " & Request.Cookies("LoggedInUser").Value
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
        Dim ad As New SqlDataAdapter("select * from Posts", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        Dim dv As DataView
        dv = New DataView(ds.Tables(0))
        dv.Sort = "PostID"
        GridView1.DataSource = dv
        GridView1.DataBind()
        con.Close()
        DataBind()

    End Sub
End Class