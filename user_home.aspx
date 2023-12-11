<%@ Page Language="VB" AutoEventWireup="false" CodeFile="user_home.aspx.vb" Inherits="user_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cashify</title>
    <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <style type="text/css">
   body{
    min-height: 120vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #9fe870;
}

.img
{
    border-radius:50px;
    }
    
    .img:hover{
  animation: shake 0.8s infinite;
}

@keyframes shake {
  0% { transform: translateX(0); }
  25% { transform: translateX(-10px); }
  50% { transform: translateX(10px); }
  75% { transform: translateX(-10px); }
  100% { transform: translateX(0); }
}


#myrect {
  animation-name: rotate;
  animation-duration: 6s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

@keyframes rotate {
  from 
  {
    transform:rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
 .header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height : 50px;
  background:  hsla(0, 0%, 0%, 0.7);
  padding-block: 25px;
  transition: 0.25s ease-in;
  z-index: 4;
}

.header.active {
  background:  hsla(240, 2%, 10%, 0.293);
  padding-block: 20px;
  
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <header class="header">
        <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        
        
        style="z-index: 1; left: 16px; top: 1px; position: absolute; height: 100px; width: 112px" />
        
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/cash_text.png" 
        
        style="z-index: 1; left: 104px; top: 29px; position: absolute; height: 95px; width: 168px" />
         <asp:Menu ID="Menu1" runat="server" ForeColor="#9FE870" Orientation="Horizontal" 
        RenderingMode="Table" class="menu"
        
        
        style="z-index: 1; left: 328px; top: 63px; position: absolute; height: 20px; width: 1137px; margin-bottom: 0px;" 
        Font-Names="Century Gothic" Font-Size="15pt" Font-Bold="True">
        <DynamicMenuItemStyle ForeColor="Black" />
        <Items>
            <asp:MenuItem  Text="Home" Value="Home" NavigateUrl="~/user_home.aspx"></asp:MenuItem>
            <asp:MenuItem Text="view Bank details" Value="view Bank details" NavigateUrl="~/veiw_bank_details.aspx"></asp:MenuItem>
            <asp:MenuItem Text="edit Bank details" Value="edit Bank details" NavigateUrl="~/edit_bank_details.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Currency converter" Value="currency converter" NavigateUrl="~/currency_converter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="profile" Value="profile" NavigateUrl="~/profile.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Edit profile" Value="Edit profile" NavigateUrl="~/edit_profile.aspx"></asp:MenuItem>
            <asp:MenuItem Text="transaction history" Value="transaction history" NavigateUrl="~/transaction_history.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Log out" Value="Logout" NavigateUrl="~/userlogin.aspx"></asp:MenuItem>
        </Items>
        <StaticHoverStyle ForeColor="White" />
        <StaticMenuItemStyle Font-Size="15pt" />
        <StaticMenuStyle VerticalPadding="5px" />
    </asp:Menu>
   </header>
   


    <asp:Image ID="Image2" runat="server" ImageUrl="~/photos/exchg.jpg" class="img"
        style="z-index: 1; left: 699px; top: 198px; position: absolute; height: 553px; width: 675px" />
   
    <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
        Font-Size="60pt" ForeColor="#336600" 
        style="z-index: 1; left: 70px; top: 278px; position: absolute; width: 565px" 
        Text="MEET MONEY WITHOUT BORDERS"></asp:Label>
   
    </form>
</body>
</html>
