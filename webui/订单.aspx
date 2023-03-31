<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="订单.aspx.cs" Inherits="订单" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 黑体; font-size: large; font-weight: bold">
    我的订单</p>
<p style="font-family: 黑体; font-size: large; font-weight: bold; color: #FF0000">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="oid" 
        ForeColor="#333333" GridLines="None" Height="60px" 
        OnPageIndexChanging="GridView1_PageIndexChanging" 
        Width="100%" onrowcommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="oid" HeaderText="订单号">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="allPrice" HeaderText="总金额" DataFormatString="{0:N2}元">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="收货人">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="tel" HeaderText="联系方式">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="orderTime" HeaderText="购买时间">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
           
            <asp:TemplateField HeaderText="查看详情">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" 
                        CommandName="Select" Text="查看详情" CommandArgument='<%# Eval("oid") %>'></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_orders]"></asp:SqlDataSource>
</p>
</asp:Content>



