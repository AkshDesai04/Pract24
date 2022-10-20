<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Pract24.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h2 align="center">Login page</h2>
            <p align="center">Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p align="center">Password:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </p>
        </div>
    </form>
</body>
</html>
