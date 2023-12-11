<%@ Page Language="VB" AutoEventWireup="false" CodeFile="edit_bank_details.aspx.vb" Inherits="edit_bank_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <title>Cashify</title>
     
   
    
    <style type="text/css">
        *{
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Lucida Console;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
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

body{
    min-height: 120vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #9fe870;
}
.panel
{
    border-radius:20px;
       box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
       background-color:#fff;
        align-items: center;
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

   
    
    .frame
    {
       border-radius:10px;
    }
    .frame:hover
    {
         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        cursor: pointer;
        border-color:#9fe870;
        }
    
    .header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height : 100px;
  background:  hsla(0, 0%, 0%, 0.7);
  padding-block: 25px;
  transition: 0.25s ease-in;
  z-index: 4;
}

.header.active {
  background:  hsla(240, 2%, 10%, 0.293);
  padding-block: 20px;
  
}



.image-container {
      overflow: hidden;
}

.image-container{
   
    transform-origin: center center; /* Set the rotation origin to the center */
    /* Rotate the image 45 degrees clockwise (change the value as needed) */
    transform: rotate(45deg);
}

.menu:hover
{
    text-decoration: underline #9fe870;
    }

    </style>
</head>
<body  >
    <form id="form1" runat="server">
    <div>
    
    </div>
     <header class="header">
    <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        style="z-index: 1; left: 13px; top: -4px; position: absolute; height: 100px; width: 112px" />
        
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/cash_text.png" 
        style="z-index: 1; left: 104px; top: 2px; position: absolute; height: 95px; width: 168px" />
        
   <asp:Menu ID="Menu1" runat="server" ForeColor="#9FE870" Orientation="Horizontal" 
        RenderingMode="Table" class="menu"
        
        
        style="z-index: 1; left: 356px; top: 39px; position: absolute; height: 20px; width: 1151px; margin-bottom: 0px;" 
        Font-Names="Century Gothic" Font-Size="Smaller" Font-Bold="True">
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
    

    <asp:Panel ID="Panel1" runat="server" class="panel"
     
        
        
        
        style="z-index: 1; left: 179px; top: 143px; position: absolute; height: 566px; width: 1115px">
        <header Font-Names="Lucida Console" >Edit Bank Details</header>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 43px; top: 72px; position: absolute" 
            Text="Name" Font-Names="Lucida Console" Font-Size="13pt" Font-Bold="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="txtbox" required onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            style="z-index: 1; left: 39px; top: 98px; position: absolute; height: 36px; width: 287px;" 
            Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" style="z-index: 1; left: 408px; top: 73px; position: absolute" 
            Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" class="txtbox" Font-Size="15pt" required
            onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            style="z-index: 1; left: 402px; top: 98px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
         <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" style="z-index: 1; left: 776px; top: 74px; position: absolute" 
            Text="Father Name"></asp:Label>
        <asp:TextBox ID="TextBox3"  runat="server" class="txtbox" Font-Size="15pt" required
            
            onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            
            style="z-index: 1; left: 782px; top: 97px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" style="z-index: 1; left: 37px; top: 149px; position: absolute" 
            Text="Mother Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" class="txtbox" Font-Size="15pt" 
            required onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            style="z-index: 1; left: 34px; top: 172px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox5" type="date" runat="server" class="txtbox" Font-Size="15pt" 
            required 
            
            style="z-index: 1; left: 402px; top: 172px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 403px; top: 150px; position: absolute; right: 556px;" 
            Text="DOB"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" style="z-index: 1; left: 39px; top: 330px; position: absolute" 
            Text="Acc No"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" class="txtbox" Font-Size="15pt" 
            required
            
            
            
            style="z-index: 1; left: 407px; top: 251px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 778px; top: 225px; position: absolute" 
            Text="E-mail"></asp:Label>
        <asp:TextBox ID="TextBox8" type="email" runat="server" class="txtbox" Font-Size="15pt" 
            required
            
            
            style="z-index: 1; left: 779px; top: 251px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" style="z-index: 1; left: 37px; top: 403px; position: absolute" 
            Text="Bank name"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 409px; top: 403px; position: absolute" 
            Text="Bank Address"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" class="txtbox" Font-Size="15pt" 
            required
            onkeypress="return /[0-9]/i.test(event.key)"
            style="z-index: 1; left: 40px; top: 354px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 779px; top: 150px; position: absolute; right: 180px;" 
            Text="Gender"></asp:Label>
        <asp:TextBox ID="TextBox11" type="number" runat="server" class="txtbox" Font-Size="15pt" 
            required
            onkeypress="return /[0-9]/i.test(event.key)"
            style="z-index: 1; left: 780px; top: 352px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" class="txtbox" Font-Size="15pt" 
            required onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            style="z-index: 1; left: 34px; top: 427px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox13" runat="server" class="txtbox" Font-Size="15pt" 
            
            
            style="z-index: 1; left: 405px; top: 429px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
       
        <asp:DropDownList ID="gender" runat="server" class="frame" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            
            style="z-index: 1; left: 776px; top: 175px; position: absolute; height: 35px; width: 137px">
            <asp:ListItem Selected="True">SELECT</asp:ListItem>
            <asp:ListItem>MALE</asp:ListItem>
            <asp:ListItem>FEMALE</asp:ListItem>
            <asp:ListItem>OTHERS</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label11" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 35px; top: 221px; position: absolute; height: 24px;" 
            Text="contact no"></asp:Label>
        <asp:Label ID="Label14" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 408px; top: 224px; position: absolute; height: 24px;" 
            Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" type="number" class="txtbox" 
            Font-Size="15pt" required onkeypress="return /[0-9]/i.test(event.key)"
            
            style="z-index: 1; left: 34px; top: 252px; position: absolute; height: 36px; width: 287px; right: 770px;"></asp:TextBox>
        <hr style="z-index: 1; left: 3px; top: 301px; position: absolute; height: 0px; width: 1109px" />
        <asp:DropDownList ID="acctype" runat="server" class="frame" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            
            style="z-index: 1; left: 408px; top: 354px; position: absolute; height: 35px; width: 137px">
            <asp:ListItem Selected="True">SELECT</asp:ListItem>
            <asp:ListItem>Savings</asp:ListItem>
            <asp:ListItem>Current</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label15" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 412px; top: 331px; position: absolute" 
            Text="Acc Type"></asp:Label>
        <asp:Label ID="Label16" runat="server" Font-Names="Lucida Console" 
            Font-Size="13pt" 
            style="z-index: 1; left: 783px; top: 331px; position: absolute" Text="CIF No"></asp:Label>


            <asp:Button ID="Button1" runat="server" class="submitf" Font-Bold="True" 
            Font-Names="Lucida Console" Font-Size="11pt" 
            style="z-index: 1; left: 409px; top: 507px; position: absolute; height: 35px; width: 148px; right: 558px;" 
            Text="UPDATE" />
        <asp:Button ID="Button2" runat="server" class="submitf" Font-Bold="True" type="reset" 
            Font-Names="Lucida Console" Font-Size="11pt" 
            style="z-index: 1; left: 586px; top: 506px; position: absolute; height: 35px; width: 148px;" 
            Text="RESET" />
        <asp:Label ID="Label17" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 40px; top: 483px; position: absolute" 
            Text="Login Name"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server" class="txtbox" Font-Size="15pt" readonly
            required="" 
            style="z-index: 1; left: 34px; top: 505px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/photos/cateating.gif" 
            style="z-index: 1; left: 800px; top: 401px; position: absolute; height: 150px; width: 140px" />
    </asp:Panel>
    <asp:Label ID="Label18" runat="server" 
        style="z-index: 1; left: 8px; top: 305px; position: absolute" Text="Label" 
        Visible="False"></asp:Label>
    </form>
    
</body>
</html>