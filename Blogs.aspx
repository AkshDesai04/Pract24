<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="Pract24.Blogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title></title>
        <link type="text/css" href="Style.css" rel="Stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <div class="label1">
                    <asp:Label ID="Label1" runat="server" text="Hey There"/> 
                </div>
                
                <asp:Button ID="Button1" runat="server" Text="New Blog" PostBackUrl="~/CreateBlog.aspx" />
                <asp:Button ID="ChngPass" runat="server" Text="Change Password" PostBackUrl="~/ChangePass.aspx" />
                <asp:Button ID="Button2" runat="server" Text="Manage Accounts" PostBackUrl="~/AdminPanel.aspx" Visible = "false"/>
                <asp:Button ID="LogOut" runat="server" Text = "Log Out" PostBackUrl="~/index.aspx"/>
                <br/>

                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            </div>
        </form>
    </body>
</html>