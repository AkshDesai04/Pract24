<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChangePass.aspx.vb" Inherits="Pract24.ChangePass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Old Password:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></br>
        New Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></br>
        Confirm Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></br>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
