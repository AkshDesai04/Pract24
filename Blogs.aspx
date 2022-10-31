<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="Pract24.Blogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <script language="vbscript">
            Protected Sub delFunc(sender As Object, e As CommandEventArgs)
                Response.Write(ID)
            End Sub
        </script>
    </head>
    <body>
        <form id="form1" runat="server">
            <div> <%--Header Div--%>
                <asp:Label ID="Label1" runat="server"/> 
                <asp:Button ID="Button1" runat="server" Text="New Blog" PostBackUrl="~/CreateBlog.aspx" />
                <asp:Button ID="LogOut" runat="server" Text = "Log Out" PostBackUrl="~/index.aspx"/>
            </div>
            <br/>
            <div> <%--Body Div--%>
                <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>
                <asp:PlaceHolder ID="bodyPH" runat="server" />
            </div>
        </form>
    </body>
</html>