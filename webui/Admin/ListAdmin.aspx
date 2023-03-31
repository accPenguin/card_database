<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListAdmin.aspx.cs" Inherits="admin_ListAdmin" %>


<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="aid" 
            ForeColor="#333333" GridLines="None" Height="60px" 
            OnPageIndexChanging="GridView1_PageIndexChanging" 
            OnRowDeleting="GridView1_RowDeleting" Width="100%">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="aname" HeaderText="用户名">
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
                </asp:BoundField>
              
                <asp:BoundField DataField="tel" HeaderText="联系方式">
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="管理">
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="center" />
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" 
                            CommandName="Delete" OnClientClick="return confirm('您确认删除?');" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="100px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
