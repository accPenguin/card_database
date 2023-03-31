<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListOrders.aspx.cs" Inherits="admin_ListOrders" %>


<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" DataKeyNames="oid">
            <Columns>
                <asp:BoundField DataField="oid" HeaderText="订单ID" SortExpression="oid" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="用户ID" SortExpression="uid" />              
                <asp:BoundField DataField="orderTime" HeaderText="订单时间" SortExpression="addtime" />
   
                <asp:BoundField DataField="allPrice" HeaderText="总价" SortExpression="allPrize" />
                <asp:BoundField DataField="tel" HeaderText="联系方式" SortExpression="tel" />
                <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_orders]"></asp:SqlDataSource>
    
        <br />
        输入订单id<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发货" />
    
    </div>
    </form>
</body>
</html>
