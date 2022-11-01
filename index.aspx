    <%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Pract24.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="index">
        <div class="trans" style="background-color: #ffffff;border: 1px solid black;opacity: 0.6; margin: 180px; margin-bottom:20px">
            <div class="l1" style="margin-top:50px;margin-left:400px">
            <asp:Label runat = "server">Hello there!</asp:Label>
            </div>
            <div class="l2" style="margin-top:100px;margin-left:350px">
             <asp:Label runat = "server">Let's Get Started!</asp:Label><br/>
            </div>
            <div class="btn1" style="margin-top:-180px;margin-left:-150px">
            <asp:Button ID="login" runat="server" Text="Login" Style="border-radius:10px;position:absolute;padding:5px;width:100px;font-size:20px;margin-top:360px; cursor:pointer; margin-left:500px;" BackColor="#473BF0" BorderColor="#473BF0" ForeColor="White" BorderStyle="Solid" BorderWidth="4px" />
            </div>
            <div class="btn2" style="margin-top:-150px;margin-left:-150px">
            <asp:Button ID="signup" runat="server" Text="SignUp" Style="border-radius:10px;padding:5px;width:100px;font-size:20px;margin-top:360px;margin-left:650px;cursor:pointer;" BackColor="#473BF0" BorderColor="#473BF0" ForeColor="White" BorderStyle="Solid" BorderWidth="4px"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
