<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Blogs.aspx.vb" Inherits="Pract24.Blogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link type="text/css" href="Style.css" rel="Stylesheet" />
    </head>
    <body style="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);">
        <form id="form1" runat="server">
            <div>
                <div class="label1" style="position: absolute; width: 544px; height: 120px; left: 370px; top: 30px; font-family: 'Poppins'; font-style: normal; font-weight: 500; font-size: 45px; line-height: 96px; text-align: center; text-transform: capitalize; color: #000000;">
                    <asp:Label ID="Label1" runat="server" text="Hey There"/> 
                </div>
                <div class="para1" style="position: absolute; width: 1295px; height: 76px; font-family: 'Poppins'; font-style: normal; font-weight: 500; font-size: 18px; line-height: 38px; text-align: center; text-transform: capitalize; color: #000000; top:90px">
                    <p>I love writing about what’s happening across the globe and how it makes me feel by giving my take on it.</p>
                </div>
                <div class="cards" style="position: absolute; left: 160px; top: 240px;">
                    <img src="https://wallpaperaccess.com/full/366025.jpg" alt="Alternate Text" width="200px" height="200px"/>
                </div>
                <div class="thumbnail" style="position: absolute; width: 200px; height: 130px; left: 160px; top: 430px; background: #D9D9D9;">
                    <p style="position: absolute; height: 72px; font-family: 'Poppins'; font-style: normal; font-weight: 600; font-size: 15px; line-height: 20px; left:10px; top:25px; color: #000000;">
                        NASA is hitting asteroids to protect our planet
                    </p>
                </div>
                <div class="cards" style="position: absolute; left: 550px; top: 240px;">
                    <img src="https://wallpaperaccess.com/full/1124115.jpg" alt="Alternate Text" width="200px" height="200px"/>
                </div>
                <div class="thumbnail" style="position: absolute; width: 200px; height: 130px; left: 550px; top: 430px; background: #D9D9D9;">
                    <p style="position: absolute; height: 72px; font-family: 'Poppins'; font-style: normal; font-weight: 600; font-size: 15px; line-height: 20px; left:10px; top:25px; color: #000000;">
                        Sunset is the time when the sun goes down and night begins.
                    </p>
                </div>
                <div class="cards" style="position: absolute; left: 930px; top: 240px;">
                    <img src="https://wallpaperaccess.com/full/1239676.jpg" alt="Alternate Text" width="200px" height="200px"/>
                </div>
                <div class="thumbnail" style="position: absolute; width: 200px; height: 130px; left: 930px; top: 430px; background: #D9D9D9;">
                    <p style="position: absolute; height: 72px; font-family: 'Poppins'; font-style: normal; font-weight: 600; font-size: 15px; line-height: 20px; left:10px; top:25px; color: #000000;">
                       Sunrise is a time when there is calm and quiet, no smoke, and no noise.
                    </p>
                </div>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="New Blog" PostBackUrl="~/CreateBlog.aspx" Style="border-radius:15px; margin-top:170px; padding:5px;width:80px;font-size:15px;margin-left:600px;position:absolute" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White"/>  <br />
                <div>
                  
                </div>           
                     <asp:Button ID="LogOut" runat="server" Text = "Log Out" PostBackUrl="~/index.aspx" Style="border-radius:15px; margin-top:1px; padding:5px;width:80px;font-size:15px;margin-left:1100px;position:absolute" BackColor="#473BF0" BorderColor="#473BF0" BorderStyle="Solid" BorderWidth="4px" ForeColor="White"/>
                </div>
                
                <br/>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </form>
    </body>
</html>