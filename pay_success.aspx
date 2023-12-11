<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pay_success.aspx.vb" Inherits="pay_success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <title>Cashify</title>
    <style>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" class="panel"
        
        style="z-index: 1; left: 409px; top: 59px; position: absolute; height: 615px; width: 711px">
        <asp:ImageButton ID="ImageButton1" runat="server" 
    
            style="z-index: 1; left: 80px; top: 56px; position: absolute; height: 500px; width: 538px;" 
            ImageUrl="~/photos/cat_cute_money.gif" />
        <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
            Font-Size="20pt" 
            style="z-index: 1; left: 145px; top: 568px; position: absolute" 
            Text="Transcation Successed!!"></asp:Label>
    </asp:Panel>
    </form>
</body>
</html>
