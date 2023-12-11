<%@ Page Language="VB" AutoEventWireup="false" CodeFile="currency_converter.aspx.vb" Inherits="currency_converter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cashify</title>
    <link  rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <style type="text/css">
        #Select1
        {
            width: 225px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[
        

// ]]>
       
    </script>
    <style type="text/css">
       
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
       border-radius:20px;
       box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
       background-color:#fff;
        
    }
    .txtbox
    {
        border-radius:10px;
    }
    .txtbox:hover
    {
        box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        cursor: pointer;
        }
        .img
        {
          border-radius:5px;  
            }
      .bg
      {
          background-color:#9fe870;
          }
          
      .lbl
      {
         border-radius:10px; 
         background-color:#9fe870;
         text-align=center;
          }
           .lbl1
      {
          text-decoration: underline #9fe870 2px;
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

<body class="bg" >
    <form id="form1" runat="server">
    <div>
     
    </div>
    
    <asp:Panel ID="Panel1" runat="server" BorderWidth="3px" class="frame" 
        
        
        
        
        style="z-index: 1; left: 561px; top: 70px; position: absolute; height: 620px; width: 512px">
        <asp:Label ID="Label1" runat="server" 
    
            style="z-index: 1; left: 14px; top: 64px; position: absolute; height: 30px; width: 205px;" 
            Text="FROM" Font-Names="Lucida Console"></asp:Label>
            
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Lucida Console" class="frame"
            Font-Size="13pt" 
            style="z-index: 1; left: 14px; top: 96px; position: absolute; height: 35px; width: 137px" >
            <asp:ListItem>EURO</asp:ListItem>
            <asp:ListItem>YUAN</asp:ListItem>
            <asp:ListItem Selected="True">INR</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>YEN</asp:ListItem>
        </asp:DropDownList>
        
        <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Lucida Console" class="frame"
            Font-Size="13pt" 
            
            
            
            style="z-index: 1; left: 311px; top: 97px; position: absolute; height: 35px; width: 132px">
            <asp:ListItem>EURO</asp:ListItem>
            <asp:ListItem>YEN</asp:ListItem>
            <asp:ListItem>YUAN</asp:ListItem>
            <asp:ListItem>INR</asp:ListItem>
            <asp:ListItem Selected="True">USD</asp:ListItem>
        </asp:DropDownList>
       
   
        <asp:TextBox ID="TextBox1" type="number" runat="server" Font-Names="Lucida Console" class="txtbox"
            Font-Size="15pt" placeholder="enter amount above 5000" required
            
            
            
            style="z-index: 1; left: 19px; top: 176px; position: absolute; height: 37px; width: 323px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Font-Names="Lucida Console" class="txtbox" ReadOnly
            Font-Size="15pt" placeholder="converted amount"
            
            
            style="z-index: 1; left: 221px; top: 505px; position: absolute; height: 31px; width: 258px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 67px; top: 278px; position: absolute; width: 219px; height: 24px" 
            Text="Bank tarnsfer fee"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 322px; top: 277px; position: absolute; width: 163px; height: 24px" 
            Text="bank fee"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 67px; top: 320px; position: absolute; width: 132px; height: 24px" 
            Text="Our fee"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 323px; top: 317px; position: absolute; width: 148px; height: 24px" 
            Text="Our fee amt"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Names="Lucida Console" class="lbl"
            style="z-index: 1; left: 26px; top: 277px; position: absolute; width: 15px; height: 18px" 
            Text="-"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Names="Lucida Console" class="lbl"
            style="z-index: 1; left: 28px; top: 427px; position: absolute; width: 15px; height: 18px; bottom: 173px;" 
            Text="÷"></asp:Label>
        <hr 
    style="z-index: 1; left: 1px; top: 395px; position: absolute; height: -15px; width: 510px" />
        <hr 
    
    style="z-index: 1; left: 0px; top: 239px; position: absolute; height: 0px; width: 512px" />
        <asp:Label ID="Label9" runat="server" Font-Names="Lucida Console" class="lbl"
            style="z-index: 1; left: 27px; top: 316px; position: absolute; width: 15px; height: 18px" 
            Text="-"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 67px; top: 355px; position: absolute; width: 168px; height: 24px; right: 373px;" 
            Text="Total Amount"></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Names="Lucida Console" 
            
            
            style="z-index: 1; left: 325px; top: 353px; position: absolute; width: 238px; height: 24px" class="lbl1"
            Text="Tot amt"></asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Names="Lucida Console" class="lbl"
            style="z-index: 1; left: 28px; top: 353px; position: absolute; width: 15px; height: 18px; bottom: 247px;" 
            Text="="></asp:Label>
        <asp:Label ID="Label13" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 57px; top: 428px; position: absolute; width: 195px; height: 24px; right: 356px;" 
            Text="Gauranteed Rate"></asp:Label>
        <asp:Label ID="Label14" runat="server" Font-Names="Lucida Console" class="lbl1"
            style="z-index: 1; left: 328px; top: 428px; position: absolute; width: 176px; height: 24px; right: 8px;" 
            Text="gau amt"></asp:Label>
        <hr 
    
    style="z-index: 1; left: 0px; top: 475px; position: absolute; height: 0px; width: 510px" />
        <asp:Label ID="Label15" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 15px; top: 573px; position: absolute; width: 228px; height: 24px; right: 269px;" 
            Text="amount arrives on"></asp:Label>
        <asp:Label ID="Label17" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 18px; top: 512px; position: absolute; width: 207px; height: 24px; right: 287px;" 
            Text="Recipient gets"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" class="txtbox" border-radius="5px"
            
            style="z-index: 1; left: 238px; top: 97px; position: absolute; height: 30px; width: 44px" 
            ImageUrl="~/photos/reverse_arrow.png" />
        <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 310px; top: 63px; position: absolute; height: 30px; width: 205px;" 
            Text="TO"></asp:Label>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" class="submitf" 
            Font-Names="Lucida Console" Font-Size="11pt" 
            style="z-index: 1; left: 362px; top: 178px; position: absolute; height: 35px;" 
            Text="convert" />
        <asp:Label ID="Label18" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 298px; top: 569px; position: absolute; width: 176px; height: 24px; right: 38px;" 
            Text="DATE"></asp:Label>
       
        

        <br />
       
        

    </asp:Panel>
    
   
    <asp:Image ID="Image1" runat="server" class="img"
        
        style="z-index: 1; left: 729px; top: 170px; position: absolute; height: 31px; width: 48px; right: 625px;" 
        ImageUrl="~/photos/IND.png" />
    <p>
    <asp:Image ID="Image2" runat="server" class="img"
        
            style="z-index: 1; left: 727px; top: 171px; position: absolute; height: 31px; width: 48px; right: 627px;" 
            ImageUrl="~/photos/USA.png" Visible="False" />
    <asp:Image ID="Image3" runat="server" class="img"
        
            style="z-index: 1; left: 729px; top: 170px; position: absolute; height: 31px; width: 48px; right: 625px;" 
            ImageUrl="~/photos/JPN.png" Visible="False" />
    <asp:Image ID="Image4" runat="server" class="img"
        
            style="z-index: 1; left: 726px; top: 171px; position: absolute; height: 31px; width: 48px; right: 628px;" 
            ImageUrl="~/photos/CHN.png" Visible="False" />
    <asp:Image ID="Image5" runat="server" class="img"
        
            style="z-index: 1; left: 726px; top: 171px; position: absolute; height: 31px; width: 48px; right: 628px;" 
            ImageUrl="~/photos/EURO.png" Visible="False" />
    <asp:Image ID="Image6" runat="server" class="img"
        
        style="z-index: 1; left: 1015px; top: 171px; position: absolute; height: 31px; width: 48px; right: 339px;" 
        ImageUrl="~/photos/IND.png" Visible="False" />
    <asp:Image ID="Image7" runat="server" class="img"
        
            style="z-index: 1; left: 1015px; top: 170px; position: absolute; height: 31px; width: 48px; right: 339px;" 
            ImageUrl="~/photos/USA.png" />
    <asp:Image ID="Image9" runat="server" class="img"
        
            style="z-index: 1; left: 1015px; top: 170px; position: absolute; height: 31px; width: 48px; right: 339px;"
            ImageUrl="~/photos/CHN.png" Visible="False" />
    <asp:Image ID="Image10" runat="server" class="img"
        
            style="z-index: 1; left: 1015px; top: 170px; position: absolute; height: 31px; width: 48px; right: 339px;" 
            ImageUrl="~/photos/EURO.png" Visible="False" />
    </p>
    <p>
    <asp:Image ID="Image8" runat="server" class="img"
        
            style="z-index: 1; left: 1015px; top: 170px; position: absolute; height: 31px; width: 48px; right: 339px;"
            ImageUrl="~/photos/JPN.png" Visible="False" />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" class="submitf" 
            Font-Names="Lucida Console" Font-Size="11pt" 
            style="z-index: 1; left: 742px; top: 717px; position: absolute; height: 35px; width: 131px;" 
            Text="proceed" />
        </p>
    <asp:Image ID="Image12" runat="server" 
        ImageUrl="~/photos/finish-cat-unscreen.gif" 
        style="z-index: 1; left: 2px; top: 391px; position: absolute; height: 302px; width: 338px" />

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
    </form>
    </body>
</html>
