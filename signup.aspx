<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="signup.aspx.vb" Inherits="Pract24.signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="Style.css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="image">

        </div>
        <div>
                <h2 style="top: 50px; position: absolute; height: 58px; left: 797px; top: 50px; font-family: 'Inter'; line-height: 58px; border-bottom: 4px solid #473BF0; color: #000000;font-size:50px;" >Sign Up</h2>
            <p align="center" style=" position: absolute;width: 157px;height: 39px;left: 682px;top: 170px;font-family: 'Inter';font-style: normal;font-weight: 500;font-size: 25px;line-height: 39px;color: #737272;">Username:
            </p>
            <div class="signtxt1" style="position: absolute; width: 150px; height: 39px;left: 707px;top: 230px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <p align="center" style="position: absolute;width: 150px;height: 39px;left: 682px;top: 240px;font-family: 'Inter';font-style: normal;font-weight: 500;font-size: 25px;line-height: 39px;color: #777777;">Password:
             </p>
            <div class="signtxt2" style="position: absolute; width: 150px; height: 39px; left: 707px; top: 300px;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <p align="center" style="position: absolute; height: 39px; left: 707px; top: 310px; font-family: 'Inter'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 39px; color: #737272">Confirm Password:
            </p>
            <div class="signtx3" style="position: absolute; width: 150px; height: 39px; left: 707px; top: 370px;">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <p align="center">
                <asp:Button ID="Button1" runat="server" Text="SignUp" Style="border-radius:15px;padding:5px;width:100px;font-size:20px;margin-top:400px;margin-left:400px" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White"/>
            </p>
            <p align="center">
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="UserID Already taken. Please try another UserID"></asp:CustomValidator>
            </p>
        </div>
    </form>
</body>
</html>
