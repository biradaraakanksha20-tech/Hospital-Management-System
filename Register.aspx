<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            text-align: center;
            color: #800000;
            background-color: #FFCC66;
        }
    </style>
</head>
<body background="images/wp754821c9_06.png">
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
           PATIENT REGISTERATION PAGE</h1>
    
    </div>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFCC66" 
        BorderColor="Maroon" BorderStyle="Dashed" BorderWidth="5px" 
        ContinueDestinationPageUrl="~/Login.aspx" Font-Bold="True" Font-Italic="True" 
        Font-Names="Bradley Hand ITC" Font-Size="Large" Height="376px" Width="470px">
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
        <SideBarButtonStyle ForeColor="White" />
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    </form>
</body>
</html>
