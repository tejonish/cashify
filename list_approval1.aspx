<%@ Page Language="VB" AutoEventWireup="false" CodeFile="list_approval1.aspx.vb" Inherits="list_approval" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
.img
{
    border-radius:10px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 423px; top: 242px; position: absolute; right: 820px" 
            Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            
            
            style="z-index: 1; top: 108px; position: absolute; height: 38px; width: 235px; left: 595px; bottom: 574px;" 
            Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    
    </div>
    <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 408px; top: 181px; position: absolute; right: 822px" 
        Text="First Name"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        style="z-index: 1; top: 169px; position: absolute; height: 38px; width: 235px; left: 595px" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <p>
        <asp:TextBox ID="TextBox7" runat="server" 
            
            
            
            style="z-index: 1; top: 490px; position: absolute; height: 38px; width: 235px; left: 592px; bottom: 192px" 
            Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Font-Names="Lucida Console" 
            Font-Size="Large" 
            style="z-index: 1; left: 411px; top: 116px; position: absolute; right: 813px" 
            Text="Sign up ID"></asp:Label>
    </p>
    <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 434px; top: 374px; position: absolute; right: 834px" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" 
        
        
        style="z-index: 1; top: 236px; position: absolute; height: 38px; width: 235px; left: 592px" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 412px; top: 315px; position: absolute; right: 809px; height: 20px" 
        Text="Login Name"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" 
        
        style="z-index: 1; top: 298px; position: absolute; height: 38px; width: 235px; left: 592px" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 437px; top: 501px; position: absolute; right: 816px" 
        Text="Email ID"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" 
        
        style="z-index: 1; top: 362px; position: absolute; height: 38px; width: 235px; left: 592px" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <p>
        <asp:Image ID="Image1" runat="server" class="img"
            
            style="z-index: 1; left: 905px; top: 114px; position: absolute; height: 217px; width: 206px" 
            ImageAlign="AbsMiddle" ImageUrl="~/photos/cat_pizza.gif" />
    </p>
    <asp:Label ID="Label7" runat="server" Font-Names="Lucida Console" 
        Font-Size="Large" 
        style="z-index: 1; left: 374px; top: 436px; position: absolute; right: 799px; bottom: 261px" 
        Text="Contact number"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" 
        
        
        style="z-index: 1; top: 427px; position: absolute; height: 38px; width: 235px; left: 591px" 
        Font-Names="Lucida Console" Font-Size="15pt"></asp:TextBox>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button2" runat="server" Font-Bold="True" class="submitf"
        
        style="z-index: 1; left: 729px; top: 567px; position: absolute; height: 47px; width: 112px;" 
        Text="BACK" />
    <p>
        &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" class="submitf"
             style="z-index: 1; left: 460px; top: 569px; position: absolute; height: 42px; width: 110px; right: 827px;" 
            Text="APPROVE" />
    <p>
        <asp:Button ID="Button4" runat="server" Font-Bold="True" class="submitf"
            style="z-index: 1; left: 595px; top: 569px; position: absolute; height: 43px; width: 111px; " 
            Text="REJECT" />
    </p>
     <header class="header">
        <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        style="z-index: 1; left: 13px; top: -4px; position: absolute; height: 100px; width: 112px" />
        
    <asp:Image ID="Image11" runat="server" ImageUrl="~/photos/cash_text.png" 
        style="z-index: 1; left: 104px; top: 2px; position: absolute; height: 95px; width: 168px" />
        <asp:Menu ID="Menu1" runat="server" class="topnav"
        RenderingMode="Table" 
        
        style="z-index: 1; left: 935px; top: 21px; position: absolute; height: 39px; width: 364px; bottom: 745px; margin-bottom: 2px;" 
        Font-Bold="True" Font-Names="Lucida Console" ForeColor="#336600" 
        BackColor="transparent" DynamicHorizontalOffset="2" Font-Size="13pt" 
        StaticSubMenuIndent="10px" Orientation="Horizontal">
        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BorderColor="White" BackColor="#B5C7DE" />
        <DynamicSelectedStyle BackColor="#507CD1" />
        <Items>
            <asp:MenuItem Text="home" Value="home"></asp:MenuItem>
            <asp:MenuItem Text="customer_request" Value="customer_request">
                <asp:MenuItem NavigateUrl="~/view_request.aspx" Text="view_request" 
                    Value="view_request"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/list_approval1.aspx" Text="list of approvals" 
                    Value="list of approvals"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_rejects.aspx" Text="list of rejects" 
                    Value="list of rejects"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/home.aspx" Text="log out" 
                    Value="log out"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticMenuStyle BackColor="White" />
        <StaticSelectedStyle BackColor="#507CD1" />
    </asp:Menu>
     </header>
    </form>
</body>
</html>