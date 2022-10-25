<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateBlog.aspx.vb" Inherits="Pract24.CreateBlog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br/>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <textarea id="TextArea1" cols="20" name="S1" rows="2" runat="server"></textarea><br/>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
