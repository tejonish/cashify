<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    
    </div>
    <asp:Image ID="Image6" runat="server" ImageUrl="~/photos/USA.png" 
        style="z-index: 1; left: 145px; top: 86px; position: absolute; height: 84px; width: 81px" />
    <p>
        <asp:Image ID="Image7" runat="server" ImageUrl="~/photos/CHNPIC.png" 
            style="z-index: 1; left: 37px; top: 84px; position: absolute; height: 84px; width: 81px" />
    </p>
    </form>
</body>
</html>
