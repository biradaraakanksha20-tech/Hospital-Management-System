<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="Patient" %>

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
<body>
    <form id="form1" runat="server">
    <div>
     <table border="2" bordercolor="red" bgcolor="#ffff99" width="100%" background="images/hospital-background.jpg">
            <tr>
                <td align="center">         
                    <h1>
                    <span class="style1">Patient Management System</span>
                    </h1>
                </td>
            </tr>
        </table> 
          <hr size="10" color="blue" />
        <a href="Home.aspx">HOME </a>
        <hr size="10" color="blue" />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataKeyNames="PatientId" 
        DataSourceID="SqlDataSource1" ForeColor="Black" Height="205px" Width="433px">
        <RowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" ReadOnly="True" 
                SortExpression="PatientId" />
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" 
                SortExpression="PatientName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="CellNo" HeaderText="CellNo" 
                SortExpression="CellNo" />
            <asp:BoundField DataField="Disease" HeaderText="Disease" 
                SortExpression="Disease" />
            <asp:BoundField DataField="TimePeriod" HeaderText="TimePeriod" 
                SortExpression="TimePeriod" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Patient] WHERE [PatientId] = @PatientId" 
        InsertCommand="INSERT INTO [Patient] ([PatientId], [PatientName], [Age], [CellNo], [Disease], [TimePeriod]) VALUES (@PatientId, @PatientName, @Age, @CellNo, @Disease, @TimePeriod)" 
        SelectCommand="SELECT * FROM [Patient]" 
        UpdateCommand="UPDATE [Patient] SET [PatientName] = @PatientName, [Age] = @Age, [CellNo] = @CellNo, [Disease] = @Disease, [TimePeriod] = @TimePeriod WHERE [PatientId] = @PatientId">
        <DeleteParameters>
            <asp:Parameter Name="PatientId" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="CellNo" Type="String" />
            <asp:Parameter Name="Disease" Type="String" />
            <asp:Parameter Name="TimePeriod" Type="String" />
            <asp:Parameter Name="PatientId" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="PatientId" Type="String" />
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="CellNo" Type="String" />
            <asp:Parameter Name="Disease" Type="String" />
            <asp:Parameter Name="TimePeriod" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
