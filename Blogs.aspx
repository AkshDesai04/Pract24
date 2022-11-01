
<%@ Page Language="vb" AutoEventWireup="false"  Inherits="Pract24.Blogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="System.Data.SqlClient" %>
<%

%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title></title>
        <link type="text/css" href="Style.css" rel="Stylesheet" />
    </head>
    <body style="background-color:lavenderblush">
        <form id="form1" runat="server">
            <div>
                <% 
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
                    End If %>
                <div class="label1" style="font-size:20px;">
                    <asp:Label ID="Label1" runat="server" text=""/> 
                </div>
                
                <asp:Button ID="Button1" runat="server" Text="New Blog" PostBackUrl="~/CreateBlog.aspx" Style="border-radius:15px;padding:5px;font-size:16px;margin-left:74%;" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
                <asp:Button ID="ChngPass" runat="server" Text="Change Password" PostBackUrl="~/ChangePass.aspx" Style="border-radius:15px;padding:5px;font-size:16px;" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" Text="Manage Accounts" PostBackUrl="~/AdminPanel.aspx" Visible = "false"/>
                <asp:Button ID="LogOut" runat="server" Text = "Log Out" PostBackUrl="~/index.aspx" Style="border-radius:15px;padding:5px;font-size:16px;margin-top:-37px;margin-left:93.2%" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
                <br/>
                <div class="posts" style="display:flex;flex-direction:column;align-items:center">
                    <% 
                        Dim dsn As String = "CRUNCHER"
                        Dim con As New SqlConnection
                        con.ConnectionString = "Data Source=" & dsn & ";Initial Catalog=Pract24;User ID=sa;Password=123456"
                        con.Open()
                        Dim sql As String = "select * from Posts order by PostID ASC"
                        Dim rs As New SqlCommand(sql, con)
                        Dim rd As SqlDataReader = rs.ExecuteReader
                        While rd.Read()
                            Dim PostTitle As String = Convert.ToString(rd("PostTitle"))
                            Dim PostContent As String = Convert.ToString(rd("PostContent"))
                    %>
                    <div class="post" style="width: 80%; height: 200px; box-shadow: 0px 0px 10px rgba(0,0,0,.6); margin-top: 20px;border-radius:10px;padding:10px;">
                        <div style="display:flex;justify-content:space-between;align-items:center;">
                            <h3><% Response.Write(PostTitle) %></h3>
                            <p><% Response.Write(Convert.ToString(rd("UserID"))) %></p>
                        </div>
                        <p><% Response.Write(PostContent) %></p>
                    </div>
                    <%
                        End While

                    %>
                </div>
            </div>
            
        </form>
    </body>
</html>
