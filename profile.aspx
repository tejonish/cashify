<%@ Page Language="VB" AutoEventWireup="false" CodeFile="profile.aspx.vb" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <title>Cashify</title>
    <style type="text/css">
   body{
    min-height: 120vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #9fe870;
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
   
    #blur
{ 
    backdrop-filter: blur(2px);
    align-items: center;
    
    }
.panel
{
    border-radius:20px;
       box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
       background-color:transparent;
    justify-content: center;
   

    }
    .panel header{
    position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #333;
    padding:10px;
    margin:10px 10px;
    font-family:Lucida Console;
}
.panel header::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 8px;
    background-color:#9fe870;
   
}
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
        .head
        {
           position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #333;
    padding:10px;
    margin:10px 10px;
    font-family:Lucida Console; 
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
.img
{
    border-radius:50%;
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        9-</div>
    <header class="header">
    <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        style="z-index: 1; left: 13px; top: -4px; position: absolute; height: 100px; width: 112px" />
        
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/cash_text.png" 
        style="z-index: 1; left: 104px; top: 2px; position: absolute; height: 95px; width: 168px" />
        
   <asp:Menu ID="Menu1" runat="server" ForeColor="#9FE870" Orientation="Horizontal" 
        RenderingMode="Table" class="menu"
        
        
        style="z-index: 1; left: 327px; top: 49px; position: absolute; height: 20px; width: 1123px; margin-bottom: 0px;" 
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
    
    
    <asp:Panel ID="blur" runat="server" class="panel"
     style="z-index: 1; left: 173px; top: 174px; position: absolute; height: 561px; width: 1107px" 
            BackColor="White">
             <header Font-Names="Lucida Console" >profile</header>
     <asp:Label ID="Label10" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 47px; top: 191px; position: absolute; right: 918px" 
            Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="txtbox" ReadOnly
            
            style="z-index: 1; top: 93px; position: absolute; height: 16px; width: 222px; left: 286px; bottom: 452px;" 
            Font-Size="15pt"></asp:TextBox>
 
    <asp:Label ID="Label11" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 48px; top: 150px; position: absolute; right: 909px" 
        Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" class="txtbox" ReadOnly
            
            
            
                 
                 
                 style="z-index: 1; top: 359px; position: absolute; height: 13px; width: 221px; left: 287px; bottom: 189px" 
                 Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" class="txtbox" ReadOnly
            style="z-index: 1; top: 396px; position: absolute; height: 13px; width: 221px; left: 288px" 
            type="email" MaxLength="150" Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 48px; top: 273px; position: absolute; right: 937px" 
            Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" class="txtbox" ReadOnly
            
                 
                 style="z-index: 1; top: 196px; position: absolute; height: 13px; width: 221px; left: 287px" 
                 Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 48px; top: 231px; position: absolute; right: 908px; height: 28px" 
            Text="Login Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" class="txtbox" ReadOnly
            
                 
                 style="z-index: 1; top: 237px; position: absolute; height: 13px; width: 221px; left: 287px" 
                 Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 53px; top: 394px; position: absolute; right: 923px" 
            Text="Email ID"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" class="txtbox" ReadOnly
            style="z-index: 1; top: 277px; position: absolute; height: 13px; width: 221px; left: 287px" 
            type="password" Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 31px; top: 312px; position: absolute; right: 842px; bottom: 220px" 
            Text="Confirm Password"></asp:Label>
        <asp:Label ID="Label17" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 32px; top: 353px; position: absolute; right: 874px; bottom: 182px" 
            Text="Contact number"></asp:Label>
        
        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
            style="z-index: 1; left: 475px; top: 462px; position: absolute; height: 36px; " 
            Text="EDIT" class="submitf" />
        <asp:Button ID="Button2" runat="server" class="submitf" Font-Bold="True" 
            style="z-index: 1; left: 597px; top: 463px; position: absolute; height: 37px;" 
            Text="CLEAR" />
       
        <asp:Label ID="Label12" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 47px; top: 100px; position: absolute; right: 909px" 
            Text="Sign up ID"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" class="txtbox" ReadOnly
            
            style="z-index: 1; top: 155px; position: absolute; height: 13px; width: 221px; left: 285px" 
            Font-Size="15pt" Font-Names="Lucida Console"></asp:TextBox>
   
        <asp:Image ID="Image2" runat="server" 
            ImageUrl="~/photos/catjump_cont.gif" 
            
                 
                 
                 style="z-index: 1; left: 709px; top: 342px; position: absolute; height: 218px; width: 216px" />
            <asp:TextBox ID="TextBox6" runat="server" class="txtbox" ReadOnly
            style="z-index: 1; top: 319px; position: absolute; height: 13px; width: 221px; left: 289px" 
            type="password" Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
             <asp:Image ID="Image3" runat="server" class="img"
                 
                 style="z-index: 1; left: 722px; top: 83px; position: absolute; height: 249px; width: 264px; margin-right: 0px" />
    </asp:Panel>
    <asp:Label ID="Label19" runat="server" 
        style="z-index: 1; left: 20px; top: 191px; position: absolute" 
        Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>