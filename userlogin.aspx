<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userlogin.aspx.vb" Inherits="userlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cashify</title>
    <link rel="icon" type="image/png" href="~/photos/arrow_logo.png" />
    
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
    min-height: 120vh;
    display: flex;
    align-items: center;
    justify-content: center;
    /*background-image:url("/photos/wall2.jpeg");*/
}
#blur
{ 
    backdrop-filter: blur(1px);
    
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
        .head
        {
           position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #333;
    padding:10px;
    margin:10px 10px;
    font-family:Lucida Console; 
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

   
    
    .frame
    {
       border-radius:10px;
    }
    .frame:hover
    {
         box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        cursor: pointer;
        border-color:#9fe870;
        }
    
   /* .header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height : 100px;
  background:  hsla(0, 0%, 0%, 0.4);
  padding-block: 25px;
  transition: 0.25s ease-in;
  z-index: 4;
}

.header.active {
  background:  hsla(240, 2%, 10%, 0.293);
  padding-block: 20px;
  
}*/
.linkbut
    {
        border-radius:10px;
        padding:10px;
    }
    .linkbut:hover
    {
        box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        cursor: pointer;
        border-color:#9fe870;
        }
        .pw_hide
        {
            z-index: 1;
            left: 367px;
            top: 130px;
            position: absolute;
            height: 28px;
            width: 31px;
            margin-bottom: 6px;
        }
        
        </style>
     <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body background="photos/wall2.jpeg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <header class="header">
    <asp:Image ID="myrect" runat="server" ImageUrl="~/photos/arrow_logo.png" 
        
        
        style="z-index: 1; left: 13px; top: 27px; position: absolute; height: 100px; width: 112px" />
        
    <asp:Image ID="Image1" runat="server" ImageUrl="~/photos/cash_text.png" 
        
        style="z-index: 1; left: 104px; top: 29px; position: absolute; height: 95px; width: 168px" />
        
   
   

    </header>
    <asp:Panel ID="blur" runat="server" class="panel"
       
        
        
        
        
        style="z-index: 1; left: 566px; top: 253px; position: absolute; height: 375px; width: 446px">
    
    
        <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
            
            style="z-index: 1; left: 24px; top: 125px; position: absolute; height: 24px;" 
            Text="password" Font-Size="15pt"></asp:Label>
   
        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Lucida Console" class="txtbox"
            
            style="z-index: 1; left: 163px; top: 59px; position: absolute; height: 37px; width: 232px;" 
            Font-Size="15pt"></asp:TextBox>

            
            <div>
        <asp:TextBox ID="TextBox2" type="password" runat="server" Font-Names="Lucida Console" class="txtbox"
   
            
                    
                    
                    
                    style="z-index: 1; left: 165px; top: 120px; position: absolute; height: 37px; width: 229px;" 
                    Font-Size="15pt"></asp:TextBox>
             <p cursor="pointer"<i="" class="uil uil-eye-slash pw_hide"></i>
             </p>
            </div>
        
        <asp:Label ID="Label1" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 30px; top: 66px; position: absolute; height: 20px;" 
            Text="user ID" Font-Size="15pt"></asp:Label>
    
       
    <asp:Button ID="Button1" runat="server" Font-Bold="True" class="submitf"
        Font-Names="Lucida Console" 
        style="z-index: 1; left: 86px; top: 187px; position: absolute; width: 101px; height: 37px;" 
        Text="LOGIN" />
   
        <asp:Button ID="Button2" runat="server" Font-Bold="True" class="submitf"
            Font-Names="Lucida Console" 
            style="z-index: 1; left: 248px; top: 187px; position: absolute; width: 101px; height: 37px;" 
            Text="CANCEL" />
    
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Lucida Console" class="linkbut"
        PostBackUrl="~/signup.aspx" 
        style="z-index: 1; left: 61px; top: 280px; position: absolute" 
            ForeColor="White" >NEW TO CASHIFY? THEN SIGN UP!</asp:LinkButton>
   
        <asp:Label ID="Label4" runat="server" Font-Names="Lucida Console" 
            style="z-index: 1; left: 61px; top: 329px; position: absolute" 
            Text="INVALID USER ID AND PASSWORD" Visible="False" ForeColor="#FBB091"></asp:Label>
    
       
    
        <asp:LinkButton ID="LinkButton2" runat="server" 
            Font-Names="Lucida Console" ForeColor="#0066FF" PostBackUrl="~/oldpassword.aspx" 
            style="z-index: 1; left: 266px; top: 247px; position: absolute" 
            Font-Size="10pt">forgot password?</asp:LinkButton>
    
       
    
    </asp:Panel>
   
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
    
       
    
    </form>
     </body>
</html>
