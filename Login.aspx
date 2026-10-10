<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            text-align: center;
            color: #FF0000;
            background-color: #FFFF99;
        }
    </style>
</head>
<body background="images/hospital-background.jpg">
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            Hospital Management Systen Login</h1>
    
    </div>
    <p>
        </p>
    <asp:Login ID="Login1" runat="server" BackColor="#FFFFCC" BorderColor="#003399" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="5px" 
        CreateUserText="NEW USER" CreateUserUrl="~/Register.aspx" 
        DestinationPageUrl="~/Home.aspx" Font-Bold="True" Font-Italic="True" 
        Font-Names="Georgia" Font-Overline="False" Font-Size="Small" ForeColor="Black" 
        Height="233px" LoginButtonText="SUBMIT" TitleText="LOGIN " Width="397px">
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
    </form>
    </body>
</html>
