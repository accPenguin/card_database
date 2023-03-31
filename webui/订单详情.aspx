<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="订单详情.aspx.cs" Inherits="订单详情" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold" class="auto-style3">
    订单详情</p>
<p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
        ForeColor="#333333" GridLines="None" Height="60px" 
        OnPageIndexChanging="GridView1_PageIndexChanging" Width="55%" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="oid" HeaderText="订单号">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="pid" HeaderText="商品号">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="价格" DataFormatString="{0:N2}元">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="nums" HeaderText="数量">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="zhuangtai" HeaderText="状态">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_orderDetails]"></asp:SqlDataSource>
</p>
    <p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold">
        <span class="auto-style3">输入订单号，确认收货</span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确认收货" />
        &nbsp;
</p>
    <p 
    style="font-family: 黑体; font-size: large; font-weight: bold" class="auto-style4">
        商品评价：满意请给五星哦。</p>
    <p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="41px" RepeatDirection="Horizontal" style="color: #FFFF66" Width="584px">
            <asp:ListItem>一星</asp:ListItem>
            <asp:ListItem>二星</asp:ListItem>
            <asp:ListItem>三星</asp:ListItem>
            <asp:ListItem>四星</asp:ListItem>
            <asp:ListItem>五星</asp:ListItem>
        </asp:CheckBoxList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold">
        <asp:TextBox ID="TextBox2" runat="server" Height="146px" Width="980px"></asp:TextBox>
    </p>
    <p align="center" 
    style="font-family: 黑体; font-size: large; font-weight: bold">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="提交" />
    </p>
</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            color: #FFFF66;
        }
        .auto-style4 {
            color: #FFFF99;
        }
    </style>
</asp:Content>




