<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChangePass.aspx.vb" Inherits="Pract24.ChangePass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="Stylesheet" href="Style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="image">

        </div>
        <h2 style="position: absolute; height: 58px; left: 770px; top: 50px; font-family: 'Inter'; line-height: 58px; border-bottom: 4px solid #473BF0; color: #000000; font-size:40px">Change Password</h2>
        <div class="para" style="position: absolute; width: 157px; height: 39px; left: 682px; top: 155px; font-family: 'Inter'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 39px; color: #737272;">
            Old Password:
        </div>
        <div class="t3" style="position: absolute; width: 150px; height: 39px; left: 682px; top: 190px;">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="new" style="position: absolute; width: 157px; height: 39px; left: 682px; top: 235px; font-family: 'Inter'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 39px; color: #737272;">
            New Password:
        </div>
        <div class="t4" style="position: absolute; width: 150px; height: 39px; left: 682px; top: 270px;">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div class="confirm" style="position: absolute; height: 39px; left: 682px; top: 315px; font-family: 'Inter'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 39px; color: #737272;">
            Confirm Password:
        </div>
        <div class="t5" style="position: absolute; width: 150px; height: 39px; left: 682px; top: 350px;">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>      
        <asp:Button ID="Button1" runat="server" Text="Submit" Style="border-radius:15px;padding:5px;width:100px;font-size:20px;margin-top:390px;margin-left:800px" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White" />
    </div>
    </form>
</body>
</html>
