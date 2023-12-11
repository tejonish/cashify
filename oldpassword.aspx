<%@ Page Language="VB" AutoEventWireup="false" CodeFile="oldpassword.aspx.vb" Inherits="oldpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cashify</title>
    <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <style type="text/css">
    .txtbox
    {
        border-radius:10px;
        padding:10px;
    }
    .txtbox:hover
    {
        box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        cursor: pointer;
        border-color:#9fe870;
        }
    
    
    .submitf {
  border: none;
  font-size: 20px;
  color: #fff;
  letter-spacing: 1px;
  background: #4070F4;
  border-radius:5px;

}
.submitf:hover
{
    background: rgb(131,58,180);
    background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
  cursor: pointer;
}
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Lucida Console;
}
     
    
    </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 38px; width: 1377px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/password-forgot.gif" 
        style="z-index: 1; left: 8px; top: 7px; position: absolute; height: 718px; width: 772px" />
    <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
        Font-Size="36pt" Font-Underline="True" 
        style="z-index: 1; left: 710px; top: 157px; position: absolute; width: 594px" 
        Text="FORGOT PASSWORD!"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
            Font-Size="16pt" Font-Underline="False" 
            style="z-index: 1; left: 711px; top: 221px; position: absolute; width: 879px" 
            Text=" WELL WE KNOW PASSWORDS ARE PAIN IN....YOU KNOW WHERE!"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" Font-Underline="False" 
            style="z-index: 1; left: 785px; top: 288px; position: absolute; width: 335px" 
            Text="ENTER YOUR LOGIN NAME"></asp:Label>
    </p>
    <asp:TextBox ID="TextBox1" type="text" runat="server" class="txtbox"
        
        
        style="z-index: 1; left: 790px; top: 318px; position: absolute; width: 248px;" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" Font-Underline="False" 
            style="z-index: 1; left: 787px; top: 388px; position: absolute; width: 335px" 
            Text="Enter your password"></asp:Label>
    <asp:TextBox ID="TextBox2" type="password" runat="server" class="txtbox"
        
        
        style="z-index: 1; left: 791px; top: 423px; position: absolute; width: 248px;" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" Font-Underline="False" 
            style="z-index: 1; left: 793px; top: 487px; position: absolute; width: 335px" 
            Text="your password"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" class="txtbox"
        
        
        
        style="z-index: 1; left: 794px; top: 521px; position: absolute; width: 248px;" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button3" runat="server" class="submitf" 
        style="z-index: 1; left: 815px; top: 608px; position: absolute; height: 38px; width: 104px; right: 458px" 
        Text="RESET" />
    <p>
        <asp:Button ID="Button4" runat="server" class="submitf"
            style="z-index: 1; left: 946px; top: 608px; position: absolute; height: 38px; width: 99px" 
            Text="BACK" />
    </p>
    </form>
    <script language="javascript" type="text/javascript">
        function submit() {
            alert("password updated succefully!!");
        }
    </script>
</body>
</html>
