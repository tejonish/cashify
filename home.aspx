<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    <title>Cashify</title>
    <style type="text/css">
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Lucida Console;
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
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #9fe870;
}
.shadow
{
    /*text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;*/
    }
    .submitf {
  border: none;
  font-size: 20px;
  color: #fff;
  letter-spacing: 1px;
  background: #4070F4;
  border-radius:50px;
  padding:20px;

}
.submitf:hover
{
    background: rgb(131,58,180);
    background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
   cursor: pointer;
}
.img
{
    border-radius:100px;
    }
     .header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height : 99px;
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
    <header class="header">
   <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        
        
        style="z-index: 1; left: 13px; top: -2px; position: absolute; height: 100px; width: 112px" />
        
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/cash_text.png" 
        
        
        style="z-index: 1; left: 104px; top: 15px; position: absolute; height: 95px; width: 168px" />
        
   <asp:Button ID="Button2" runat="server" class="submitf"
        style="z-index: 1; left: 987px; top: 19px; position: absolute" Text="User" 
        PostBackUrl="~/userlogin.aspx" />
    <p>
        <asp:Button ID="Button3" runat="server" class="submitf"
            style="z-index: 1; left: 1128px; top: 20px; position: absolute" 
            Text="Admin" PostBackUrl="~/admin_login.aspx" />
   

    </header>
    <div>
    
    
    
    </div>
   
    <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" class="shadow"
        Font-Size="80pt" ForeColor="#336600" 
        style="z-index: 1; left: 21px; top: 144px; position: absolute" 
        Text="Make your"></asp:Label>
    <p>
   
    <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" class="shadow"
        Font-Size="100pt" ForeColor="#009933" 
        style="z-index: 1; left: 18px; top: 234px; position: absolute" 
        Text="Money"></asp:Label>
   
    
    </p>
    <p>
   
    <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console" class="shadow"
        Font-Size="80pt" ForeColor="#336600" 
        style="z-index: 1; left: 9px; top: 358px; position: absolute; width: 917px;" 
        Text="with ease"></asp:Label>
    </p>
    <p>
   
    <asp:Label ID="Label5" runat="server" Font-Names="Lucida Console" class="shadow"
        Font-Size="60pt" ForeColor="#336600" 
        style="z-index: 1; left: 12px; top: 477px; position: absolute; width: 917px;" 
        Text="To be part of our fam!!"></asp:Label>
    </p>
    
    <asp:Button ID="Button4" runat="server" class="submitf"
        style="z-index: 1; left: 381px; top: 577px; position: absolute" 
            Text="Register Here!!" PostBackUrl="~/signup.aspx" />
    </p>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/photos/catwaving.gif" class="img"
        
        style="z-index: 1; left: 891px; top: 168px; position: absolute; height: 582px; width: 568px" />
        <asp:Label ID="Label3" runat="server" Font-Names="Lucida Console" class="shadow"
        Font-Size="80pt" ForeColor="#336600" 
        style="z-index: 1; left: 507px; top: 267px; position: absolute; width: 917px;" 
        Text="flow "></asp:Label>

    </form>
    
    </body>
</html>
