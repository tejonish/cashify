<%@ Page Language="VB" AutoEventWireup="false" CodeFile="transaction_history.aspx.vb" Inherits="transaction_history" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="panel" 
        AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" GridLines="Horizontal" 
        
        
        
        style="z-index: 1; left: 93px; top: 208px; position: absolute; height: 242px; width: 1299px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="transID" HeaderText="transID" 
                SortExpression="transID" />
            <asp:BoundField DataField="fromcur" HeaderText="fromcur" 
                SortExpression="fromcur" />
            <asp:BoundField DataField="tocur" HeaderText="tocur" SortExpression="tocur" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                SortExpression="bankname" />
            <asp:BoundField DataField="bankaddress" HeaderText="bankaddress" 
                SortExpression="bankaddress" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
            <asp:BoundField DataField="amt" HeaderText="amt" 
                SortExpression="amt" />
            <asp:BoundField DataField="accno" HeaderText="accno" SortExpression="accno" />
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
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [payment_tab] WHERE ([loginname] = @loginname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" DefaultValue="nish" Name="loginname" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 23px; top: 313px; position: absolute" 
        Text="Label" Visible="False"></asp:Label>
    <asp:Image ID="Image12" runat="server" ImageUrl="~/photos/catsleeping.gif" 
        style="z-index: 1; left: 91px; top: 489px; position: absolute; height: 227px; width: 232px" />
    </form>
</body>
</html>
