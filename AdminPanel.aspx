<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminPanel.aspx.vb" Inherits="Pract24.AdminPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name Of Account To Delete: 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text = "Delete all their posts too"/>
        <br />
        <asp:Button ID="DeleteButton" runat="server" Text="Delete" />
    </div>
    </form>
</body>
</html>
