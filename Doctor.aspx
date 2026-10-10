<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="10" celpadding="5" width="100%" border="8" bordercolor="blue"
            style="font-size: 30px; color: Red;">
            <tr>
                <td align="center" class="style1">
                    Doctor Management System
                </td>
            </tr>
        </table>
        <hr size="10" color="blue" />
        <a href="Home.aspx">HOME </a>
        <hr size="10" color="blue" />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataKeyNames="Doctor Id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" Height="207px" 
        style="text-align: center" Width="435px">
        <RowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="Doctor Id" HeaderText="Doctor Id" ReadOnly="True" 
                SortExpression="Doctor Id" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Qualifiction" HeaderText="Qualifiction" 
                SortExpression="Qualifiction" />
            <asp:BoundField DataField="Specilication" HeaderText="Specilication" 
                SortExpression="Specilication" />
            <asp:BoundField DataField="CellNo" HeaderText="CellNo" 
                SortExpression="CellNo" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor Id] = @Doctor_Id" 
        InsertCommand="INSERT INTO [Doctor] ([Doctor Id], [Fname], [Lname], [Qualifiction], [Specilication], [CellNo], [Address]) VALUES (@Doctor_Id, @Fname, @Lname, @Qualifiction, @Specilication, @CellNo, @Address)" 
        SelectCommand="SELECT * FROM [Doctor]" 
        UpdateCommand="UPDATE [Doctor] SET [Fname] = @Fname, [Lname] = @Lname, [Qualifiction] = @Qualifiction, [Specilication] = @Specilication, [CellNo] = @CellNo, [Address] = @Address WHERE [Doctor Id] = @Doctor_Id">
        <DeleteParameters>
            <asp:Parameter Name="Doctor_Id" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Qualifiction" Type="String" />
            <asp:Parameter Name="Specilication" Type="String" />
            <asp:Parameter Name="CellNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Doctor_Id" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Doctor_Id" Type="String" />
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Qualifiction" Type="String" />
            <asp:Parameter Name="Specilication" Type="String" />
            <asp:Parameter Name="CellNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
