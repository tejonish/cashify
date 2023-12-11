<%@ Page Language="VB" AutoEventWireup="false" CodeFile="card_details.aspx.vb" Inherits="card_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <title>Cashify</title>
    <style>
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

    </style>
    <script type="text/javascript">
    

    var input = document.getElementById('txtbox');
    
    input.addEventListener('keydown', function(event) {
      const key = event.key;
      if (key === "Backspace") {
        alert(key);
      }
    });
  
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        </div>
    <asp:Panel ID="Panel1" runat="server" class="panel"
        
        
        
        
        
        
        style="z-index: 1; left: 490px; top: 195px; position: absolute; height: 538px; width: 634px">
        <header>Payment</header>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 26px; top: 58px; position: absolute" 
            Text="Card Holder Name" Font-Names="Lucida Console" Font-Size="13pt" 
            Font-Bold="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="txtbox" required onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            style="z-index: 1; left: 29px; top: 90px; position: absolute; height: 36px; width: 242px;" 
            Font-Size="15pt" TabIndex="1"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 359px; top: 59px; position: absolute" 
            Text="Card Number"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" class="txtbox" Font-Size="15pt" 
            onkeypress="return /[0-9]/i.test(event.key)"
            
            style="z-index: 1; left: 363px; top: 90px; position: absolute; height: 36px; width: 244px;" 
            MaxLength="15" TabIndex="2"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 30px; top: 147px; position: absolute" 
            Text="Card Type"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" class="txtbox" Font-Size="15pt" onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            
            style="z-index: 1; left: 28px; top: 173px; position: absolute; height: 36px; width: 244px;" 
            TabIndex="3"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" class="txtbox" Font-Size="15pt" onkeydown="return /[A-Za-z .]/i.test(event.key)"
            
            
            style="z-index: 1; left: 363px; top: 176px; position: absolute; height: 36px; width: 244px;" 
            TabIndex="4"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 364px; top: 147px; position: absolute" 
            Text="Card Domain"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 34px; top: 230px; position: absolute" 
            Text="Card's expiry date"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" class="txtbox" Font-Size="15pt" onkeypress="return /[0-9]/i.test(event.key)"
            style="z-index: 1; left: 38px; top: 253px; position: absolute; height: 36px; width: 61px;" 
            MaxLength="2" ToolTip="please enter month" TabIndex="5"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" class="submitf"
            style="z-index: 1; left: 227px; top: 411px; position: absolute; height: 41px; width: 100px;" 
            Text="pay" />
        <hr style="z-index: 1; left: 2px; top: 330px; position: absolute; height: 2px; width: 628px" />
        <asp:Button ID="Button2" runat="server" class="submitf"
            
            style="z-index: 1; left: 385px; top: 413px; position: absolute;height: 41px; width: 97px; right: 152px;" 
            Text="Back" PostBackUrl="~/payment.aspx" />
        <asp:TextBox ID="TextBox6"  runat="server" class="txtbox" Font-Size="15pt" onkeypress="return /[0-9]/i.test(event.key)"
            MaxLength="4" 
            style="z-index: 1; left: 146px; top: 253px; position: absolute; height: 36px; width: 88px;" 
            ToolTip="please enter year" TabIndex="6"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="16pt" 
            style="z-index: 1; left: 120px; top: 261px; position: absolute" Text="/"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 365px; top: 232px; position: absolute" Text="CVV no"></asp:Label>
        <asp:TextBox ID="TextBox7" type="password" runat="server" class="txtbox" Font-Size="15pt" 
            MaxLength="3" 
            
            style="z-index: 1; left: 364px; top: 258px; position: absolute; height: 36px; width: 61px;" 
            TabIndex="7"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Font-Bold="False" 
            Font-Names="Lucida Console" Font-Size="13pt" 
            style="z-index: 1; left: 178px; top: 360px; position: absolute" Text="pay"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" class="txtbox" Font-Size="15pt" readonly
            
            style="z-index: 1; left: 239px; top: 351px; position: absolute; height: 36px; width: 244px;"></asp:TextBox>
        
    </asp:Panel>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 0px; top: 20px; position: absolute" Text="Label" 
        Visible="False"></asp:Label>
        <header class="header">
        <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        style="z-index: 1; left: 13px; top: -4px; position: absolute; height: 100px; width: 112px" />
        
    <asp:Image ID="Image11" runat="server" ImageUrl="~/photos/cash_text.png" 
        style="z-index: 1; left: 104px; top: 2px; position: absolute; height: 95px; width: 168px" />
        <asp:Menu ID="Menu1" runat="server" ForeColor="#9FE870" Orientation="Horizontal" 
        RenderingMode="Table" class="menu"
        
        
        style="z-index: 1; left: 327px; top: 50px; position: absolute; height: 20px; width: 1123px; margin-bottom: 0px;" 
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
    <asp:Image ID="Image12" runat="server" ImageUrl="~/photos/sus_cat.gif" 
        style="z-index: 1; left: 28px; top: 454px; position: absolute; height: 298px; width: 304px" />
    </form>
    
</body>
</html>
