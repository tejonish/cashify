<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_home.aspx.vb" Inherits="admin_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cashify</title>
    <link  rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <style type="text/css">
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
    border-radius:50px;
    }
    </style>
   </head>
<body>


    <form id="form1" runat="server">
    
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
    <p>
        &nbsp;</p>
     <asp:Image ID="Image12" runat="server" ImageUrl="~/photos/cat_face.jpg" class="img"
         
         style="z-index: 1; left: 14px; top: 107px; position: absolute; height: 661px; width: 791px" />
     <p>
   
    <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
        Font-Size="60pt" ForeColor="#336600" 
        style="z-index: 1; left: 861px; top: 243px; position: absolute; width: 565px" 
        Text="MONITOR MONEY WITHOUT BORDERS"></asp:Label>
   
     </p>
    </form>
    </body>
</html>
