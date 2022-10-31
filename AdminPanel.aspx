<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminPanel.aspx.vb" Inherits="Pract24.AdminPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="image">
            </div>
        <div>
            <h2 style="position: absolute; height: 58px; left: 700px; top: 60px; font-family: 'Inter'; line-height: 58px; border-bottom: 4px solid #473BF0; color: #000000; font-size:45px">Manage Account</h2>
            <div class="para" style="position: absolute; height: 39px; left: 682px; top: 210px; font-family: 'Inter'; font-style: normal; font-weight: 500; font-size: 20px; line-height: 39px; color: #737272;">
                Name Of Account To Delete:
            </div>
            <div style="position: absolute; width: 150px; height: 39px; left: 682px; top: 250px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div style="position: absolute; height: 39px; left: 682px; top: 280px;">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Delete all their posts too" />
            </div>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" Style="border-radius: 15px; padding: 5px; width: 100px; font-size: 20px; margin-top: 340px; margin-left: 800px" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
        </div>
    </form>
</body>
</html>
