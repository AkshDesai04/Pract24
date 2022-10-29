<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateBlog.aspx.vb" Inherits="Pract24.CreateBlog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="image">

        </div>
    <div style="height: 469px">
        <h2 style="position: absolute; height: 58px; left: 797px; top: 50px; font-family: 'Inter'; line-height: 58px; border-bottom: 4px solid #473BF0; color: #000000; font-size:50px;">Create Blog</h2>
        <div class="lbl1" style="position: absolute; width: 300px; height: 48px; left: 600px; top: 170px; font-family: 'Poppins'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 48px;text-align: center; text-transform: capitalize; color: #000000;">
            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label><br/>
        </div>       
        <div class="txt1" style="position: absolute; width: 150px; height: 39px; left: 730px; top: 210px;">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
        </div> 
        <div class="lbl2" style="position: absolute; width: 300px; height: 48px; left: 600px; top: 229px; font-family: 'Poppins'; font-style: normal; font-weight: 500; font-size: 25px; line-height: 48px;text-align: center; text-transform: capitalize; color: #000000;"">
            <asp:Label ID="Label2" runat="server" Text="Text"></asp:Label>
        </div>
        <br />
        <div class="txtarea" style="position: absolute; width: 150px; height: 39px; left: 730px; top: 270px;">
            <textarea id="TextArea1" cols="20" name="S1" rows="2" runat="server"></textarea><br/>
        </div>       
        <asp:Button ID="Button1" runat="server" Text="Submit" Style="border-radius:15px;padding:5px;width:100px;font-size:20px;margin-top:320px;margin-left:800px" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White"/>
    </div>
    </form>
</body>
</html>
