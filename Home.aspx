<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .style1
        {
            font-family: "Baskerville Old Face";
            color: #FF3300;
        }
    </style>
  
</head>
<body background="images/Jeju-National-University.jpg">
    <form id="form1" runat="server">
    
<table border="2" bordercolor="red" bgcolor="#ffff99" width="100%" background="images/hospital-background.jpg">
            <tr>
                <td align="center">         
                    <h1>
                    <span class="style1">HOSPITAL MANAGEMENT SYSTEM</span>
                    </h1>
                </td>
            </tr>
        </table> 
          <table cellpadding="10" cellspacing="05" border="07" bordercolor="indigo" bgcolor="#ccff66"width="100%" style="font-family:Times New Roman; font-size:20px; font-weight:bolder;">
       <tr>
       <td align="center">
       <a href="Doctor.aspx">Doctor Management System</a>
       </td>
       <td align="center">
       <a href="Patient.aspx">Patient Management System</a>
       </td>
       <td align="center">
       <a href="Drugs.aspx">Drugs Management System</a>
       </td>
       <td align="center">
       <a href="Test.aspx">Medical Lab Test System</a>
       </td>
     
       </tr>
       </table>


    
    </form>
</body>
</html>
