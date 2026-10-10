<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

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
                    <span class="style1">Medical Lab Test System</span>
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
        CellPadding="4" CellSpacing="2" DataKeyNames="Slno" 
        DataSourceID="SqlDataSource1" ForeColor="Black" Height="230px" Width="399px">
        <RowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="Slno" HeaderText="Slno" ReadOnly="True" 
                SortExpression="Slno" />
            <asp:BoundField DataField="TestName" HeaderText="TestName" 
                SortExpression="TestName" />
            <asp:BoundField DataField="Charges" HeaderText="Charges" 
                SortExpression="Charges" />
            <asp:BoundField DataField="Labhead" HeaderText="Labhead" 
                SortExpression="Labhead" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" 
                SortExpression="Mobileno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [lab1] WHERE [Slno] = @Slno" 
        InsertCommand="INSERT INTO [lab1] ([Slno], [TestName], [Charges], [Labhead], [Mobileno]) VALUES (@Slno, @TestName, @Charges, @Labhead, @Mobileno)" 
        SelectCommand="SELECT * FROM [lab1]" 
        UpdateCommand="UPDATE [lab1] SET [TestName] = @TestName, [Charges] = @Charges, [Labhead] = @Labhead, [Mobileno] = @Mobileno WHERE [Slno] = @Slno">
        <DeleteParameters>
            <asp:Parameter Name="Slno" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TestName" Type="String" />
            <asp:Parameter Name="Charges" Type="String" />
            <asp:Parameter Name="Labhead" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Slno" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Slno" Type="String" />
            <asp:Parameter Name="TestName" Type="String" />
            <asp:Parameter Name="Charges" Type="String" />
            <asp:Parameter Name="Labhead" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
