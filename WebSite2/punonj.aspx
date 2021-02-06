<%@ Page Language="C#" AutoEventWireup="true" CodeFile="punonj.aspx.cs" Inherits="Punonj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./main.css" />
    
</head>
<body>
    <h1 class="headers">Punonjes</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView DataKeyNames="punonjes_id" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="pun_list" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="punonjes_id" HeaderText="punonjes_id" InsertVisible="False" ItemStyle-CssClass="hiddencols" HeaderStyle-CssClass="hiddencols" SortExpression="punonjes_id" />
                    <asp:BoundField DataField="Emer" HeaderText="Emer" SortExpression="Emer" />
                    <asp:BoundField DataField="Mbiemer" HeaderText="Mbiemer" SortExpression="Mbiemer" />
                    <asp:BoundField DataField="Datelindja" HeaderText="Datelindja" SortExpression="Datelindja" />
                    <asp:BoundField DataField="Pozicioni" HeaderText="Pozicioni" SortExpression="Pozicioni" />
                    <asp:CommandField ControlStyle-CssClass="action-btn" ShowEditButton="True" EditText="Ndrysho" />
                    <asp:CommandField ControlStyle-CssClass="action-btn delete" ShowDeleteButton="true" EditText="Delete" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource 
                ID="pun_list" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:lokaliDbConnectionString %>" 
                SelectCommand="SELECT [punonjes_id], [Emer], [Mbiemer], [Datelindja], [Pozicioni] FROM [punonjes]" 
                UpdateCommand="UPDATE [punonjes] set Emer=@Emer, Mbiemer=@Mbiemer, Datelindja=@Datelindja, Pozicioni=@Pozicioni where punonjes_id=@punonjes_id"
                DeleteCommand="DELETE FROM [punonjes] where punonjes_id=@punonjes_id;">
                <DeleteParameters>
                    <asp:Parameter Name="punonjes_id" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
        <div class="mt-1">
        <asp:Button ID="insert_work" runat="server" Text="+ Shto" OnClick="insert_work_Click" />
        <asp:Button ID="backtomain2" runat="server" Text="Go Back" OnClick="backtomain2_Click" />
            </div>
    </form>
</body>
</html>
