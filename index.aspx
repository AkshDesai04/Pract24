<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Pract24.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat = "server">Hello there!</asp:Label>
        <asp:Label runat = "server">Let's Get Started!</asp:Label><br/>
        <asp:Button ID="login" runat="server" Text="LogIn" />
        <asp:Button ID="signup" runat="server" Text="SignUp" />
    </div>
    </form>
</body>
</html>
