<%@ Page Language="VB" AutoEventWireup="false" CodeFile="payment.aspx.vb" Inherits="payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>payment method</title>
    <script type="text/javascript">
        function alert() {
            window.alert("data saved successfully!!");
        }
    </script>
    <style type="text/css">
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Lucida Console;
}
body{
    min-height: 100vh;
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
    
    </style>
</head>
<body >
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
        
        
        
        
        
        
        
        style="z-index: 1; left: 202px; top: 119px; position: absolute; height: 635px; width: 1065px">
        <header Font-Names="Lucida Console" >Receipent Details</header>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 58px; top: 109px; position: absolute; height: 25px;" 
            Text="Transaction ID" Font-Names="Lucida Console" Font-Size="15pt"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="txtbox"
            
            style="z-index: 1; left: 310px; top: 99px; position: absolute; height: 36px; width: 287px;" 
            Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 177px; top: 166px; position: absolute" 
            Text="From"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" class="txtbox" Font-Size="15pt" readonly
            style="z-index: 1; left: 310px; top: 160px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" 
            
            style="z-index: 1; left: 670px; top: 167px; position: absolute; right: 365px;" 
            Text="To"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" class="txtbox" Font-Size="15pt" readonly
            
            style="z-index: 1; left: 730px; top: 159px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console"
            style="z-index: 1; left: 23px; top: 236px; position: absolute" 
            Text="Recipient's Details" Font-Bold="True" Font-Size="15pt"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 111px; top: 301px; position: absolute" 
            Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" class="txtbox" Font-Size="15pt" required
        onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            
            style="z-index: 1; left: 204px; top: 295px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" class="txtbox" Font-Size="15pt" required
            
            
            style="z-index: 1; left: 732px; top: 289px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" 
            style="z-index: 1; left: 612px; top: 300px; position: absolute; right: 347px;" 
            Text="Address"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 49px; top: 408px; position: absolute" 
            Text="Bank Name"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" class="txtbox" Font-Size="15pt" 
            required onkeypress="return /[0-9]/i.test(event.key)"
            
            style="z-index: 1; left: 206px; top: 349px; position: absolute; height: 36px; width: 287px;" 
            MaxLength="10"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" 
            style="z-index: 1; left: 549px; top: 411px; position: absolute" 
            Text="Bank Address"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" class="txtbox" Font-Size="15pt" required
            style="z-index: 1; left: 735px; top: 347px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 74px; top: 462px; position: absolute" 
            Text="Country"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" 
            style="z-index: 1; left: 629px; top: 464px; position: absolute" Text="Acc no"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" class="txtbox" Font-Size="15pt" required
            style="z-index: 1; left: 735px; top: 402px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" class="txtbox" Font-Size="15pt" required onkeydown="return /[A-Za-z .]/i.test(event.key)"
            style="z-index: 1; left: 207px; top: 405px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 37px; top: 355px; position: absolute" 
            Text="contact no"></asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" 
            style="z-index: 1; left: 630px; top: 355px; position: absolute; right: 329px;" 
            Text="E-mail"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" class="txtbox" Font-Size="15pt" required
            style="z-index: 1; left: 206px; top: 463px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" class="txtbox" Font-Size="15pt" 
            required onkeypress="return /[0-9]/i.test(event.key)"
            
            style="z-index: 1; left: 736px; top: 461px; position: absolute; height: 36px; width: 287px;" 
            MaxLength="15"></asp:TextBox>
        <hr style="z-index: 1; left: 0px; top: 515px; position: absolute; height: 2px; width: 1065px" />
        <asp:Label ID="Label13" runat="server" Font-Names="Lucida Console" 
            Font-Size="15pt" style="z-index: 1; left: 90px; top: 559px; position: absolute" 
            Text="Amount"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server" class="txtbox" Font-Size="15pt" 
            style="z-index: 1; left: 205px; top: 554px; position: absolute; height: 36px; width: 287px;"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" class="submitf" Font-Bold="True" 
            Font-Names="Lucida Console" Font-Size="11pt" 
            style="z-index: 1; left: 853px; top: 558px; position: absolute; height: 35px; width: 148px;" 
            Text="Proceed" />
    </asp:Panel>
    
   
    <asp:Label ID="Label14" runat="server" 
        
        style="z-index: 1; left: 12px; top: 254px; position: absolute; height: 20px;" Text="Label" 
        Visible="False"></asp:Label>
    
   
    <p>
        <asp:TextBox ID="TextBox14" runat="server" class="txtbox"
            
            style="z-index: 1; left: 1298px; top: 242px; position: absolute; height: 36px; width: 287px;" 
            Font-Size="15pt" Visible="False"></asp:TextBox>
        </p>
    
   
    </form>
</body>
</html>
