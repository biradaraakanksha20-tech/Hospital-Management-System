<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Drugs.aspx.cs" Inherits="Drugs" %>

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
<body style="font-weight: 700; color: #FF0000">
    <form id="form1" runat="server">
    <div>
    <table border="2" bordercolor="red" bgcolor="#ffff99" width="100%" background="images/hospital-background.jpg">
            <tr>
                <td align="center">         
                    <h1>
                    <span class="style1">Drugs Management System</span>
                    </h1>
                </td>
            </tr>
        </table> 
          <hr size="10" color="blue" />
        <a href="Home.aspx">HOME </a>
        <hr size="10" color="blue" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataKeyNames="Drugid" 
            DataSourceID="SqlDataSource1" ForeColor="Black" Height="210px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="background-color: #FF0000" Width="364px">
            <RowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Drugid" HeaderText="Drug Id" ReadOnly="True" 
                    SortExpression="Drugid" />
                <asp:BoundField DataField="Drugname" HeaderText="Drug Name" 
                    SortExpression="Drugname" />
                <asp:BoundField DataField="Company" HeaderText="Company" 
                    SortExpression="Company" />
                <asp:BoundField DataField="Mfgdate" HeaderText="Mfg Date" 
                    SortExpression="Mfgdate" />
                <asp:BoundField DataField="ExpDate" HeaderText="Exp Date" 
                    SortExpression="ExpDate" />
                <asp:BoundField DataField="mrp" HeaderText="MRP" SortExpression="mrp" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Drug1] WHERE [Drugid] = @Drugid" 
        InsertCommand="INSERT INTO [Drug1] ([Drugid], [Drugname], [Company], [Mfgdate], [ExpDate], [mrp]) VALUES (@Drugid, @Drugname, @Company, @Mfgdate, @ExpDate, @mrp)" 
        SelectCommand="SELECT * FROM [Drug1]" 
        UpdateCommand="UPDATE [Drug1] SET [Drugname] = @Drugname, [Company] = @Company, [Mfgdate] = @Mfgdate, [ExpDate] = @ExpDate, [mrp] = @mrp WHERE [Drugid] = @Drugid">
        <DeleteParameters>
            <asp:Parameter Name="Drugid" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Drugname" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="Mfgdate" Type="String" />
            <asp:Parameter Name="ExpDate" Type="String" />
            <asp:Parameter Name="mrp" Type="String" />
            <asp:Parameter Name="Drugid" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Drugid" Type="String" />
            <asp:Parameter Name="Drugname" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="Mfgdate" Type="String" />
            <asp:Parameter Name="ExpDate" Type="String" />
            <asp:Parameter Name="mrp" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
