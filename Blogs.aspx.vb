Imports System.Data.SqlClient

Public Class Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim LIU As String = ""
        Dim LIS As String = ""
        Try
            'LIU = Request.Cookies("LoggedInUser").Value
            LIS = "Permanent user: "
            Label1.Text = "Permanent user: " & Request.Cookies("LoggedInUser").Value
        Catch ex As Exception
            Try
                ' LIU = Session("LoggedInUser").ToString
                LIS = "Temparory User: "
            Catch exc As Exception
                Response.Write("Some Error Occured")
            End Try
        End Try

        Dim dsn As String = "CRUNCHER"
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=PRANALI-PC\SQLEXPRESS;Initial Catalog=Pract24;User ID=sa;Password=123456"
        con.Open()
        Dim ad As New SqlDataAdapter("select * from Post", con)
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