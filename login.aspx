<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Pract24.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="Style.css" rel="Stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <div class="image">

        </div>
        <div>
             <h2 style="position: absolute; height: 58px; left: 797px; top: 50px; font-family: 'Inter'; line-height: 58px; border-bottom: 4px solid #473BF0; color: #000000; font-size:50px">Login</h2>
            <div class="para">
             <p align="center">Username:</p>
                <div class="t1">
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </div>
            </div>
            <div class="content">
                <p align="center">Password:</p>
                <div class="t2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="check">
                <p align="center">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me"/>
            </p>
            </div>
            <div class="btn">
                <p align="center">
                <asp:Button ID="Button1" runat="server" Text="Login" Style="border-radius:15px;padding:5px;width:100px;font-size:20px;margin-top:360px;margin-left:400px" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
            </p>
            </div>
        </div>
    </form>
</body>
</html>
