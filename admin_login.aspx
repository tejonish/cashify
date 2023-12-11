<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    .panel
{
    border-radius:20px;
       box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
       background-color:transparent;
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
        .pw_hide
        {
            z-index: 1;
            left: 338px;
            top: 93px;
            position: absolute;
            height: 28px;
            width: 31px;
            margin-bottom: 6px;
        }
        
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', Lucida Console;
}
    </style>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body background="photos/wall3.jpeg" body 
    style="height: 1000px; width:auto; background-size:cover; background-attachment:fixed; background-position:center,top; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div>
    
    </div>
     <asp:Panel ID="Panel1" runat="server"  class="panel"
        
        
        
        
        
        
        style="z-index: 1; left: 617px; top: 283px; position: absolute; height: 238px; width: 394px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
        Font-Names="Lucida Console" Font-Size="Large" 
        style="z-index: 1; left: 15px; top: 33px; position: absolute; height: 27px; width: 155px; right: 278px" 
        Text="Admin name"></asp:Label>
    
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="Lucida Console" Font-Size="Large" 
            style="height: 28px; width: 127px; z-index: 1; left: 24px; top: 83px; position: absolute" 
            Text="Password"></asp:Label>
    
   
        <asp:Button ID="Button1" runat="server" Font-Bold="True" class="submitf"
            style="z-index: 1; left: 101px; top: 138px; position: absolute; height: 35px" 
            Text="LOGIN" />
        <asp:Button ID="Button2" runat="server" Font-Bold="True" class="submitf"
            style="z-index: 1; left: 244px; top: 138px; position: absolute; height: 34px" 
            Text="CLEAR" />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Font-Names="Lucida Console" Font-Size="10pt" 
        style="z-index: 1; left: 14px; top: 208px; position: absolute; height: 38px; width: 387px; right: -7px" 
        Text="invalid admin name and password!!!" ForeColor="#FF3300" Visible="False"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" class="txtbox" Font-Size="15pt" 
            required 
             
             style="z-index: 1; left: 165px; top: 26px; position: absolute; height: 34px; width: 199px;"></asp:TextBox>
            
            <div>
        <asp:TextBox ID="TxtPass" type="password" runat="server" class="txtbox" Font-Size="15pt" 
            required
            
            
                    style="z-index: 1; left: 168px; top: 83px; position: absolute; height: 36px; width: 194px;"></asp:TextBox>
    
    
         <p <i="" class="uil uil-eye-slash pw_hide" cursor="pointer">
             </i>
         </p>
        </div>
    </asp:Panel>
    </form>
    <script>
     const   pwShowHide = document.querySelectorAll(".pw_hide");


pwShowHide.forEach((icon) => {
  icon.addEventListener("click", () => {
    let getPwInput = icon.parentElement.querySelector("input");
    if (getPwInput.type === "password") {
      getPwInput.type = "text";
      icon.classList.replace("uil-eye-slash", "uil-eye");
    } else {
      getPwInput.type = "password";
      icon.classList.replace("uil-eye", "uil-eye-slash");
    }
  });
});
     </script>
</body>
</html>
