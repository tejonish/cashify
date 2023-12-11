<%@ Page Language="VB" AutoEventWireup="false" CodeFile="view_rejects.aspx.vb" Inherits="view_rejects" %>

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
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 107px; top: 246px; position: absolute; height: 194px; width: 1225px" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="signupID" HeaderText="signupID" 
                SortExpression="signupID" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="loginname" HeaderText="loginname" 
                SortExpression="loginname" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="confirmpassword" HeaderText="confirmpassword" 
                SortExpression="confirmpassword" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Purl" HeaderText="Purl" SortExpression="Purl" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cashifyConnectionString %>" 
        SelectCommand="SELECT * FROM [signup_tab] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="rejected" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    <asp:Image ID="Image12" runat="server" ImageUrl="~/photos/cat_pizza.gif" 
        style="z-index: 1; left: 104px; top: 501px; position: absolute; height: 248px; width: 272px" />
    </form>
</body>
</html>
