<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cartt.aspx.cs" Inherits="cartt" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style3 {
            color: #FFFF66;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" 
        ForeColor="#333333" GridLines="None" Height="180px" 
        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" 
        Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField HeaderText="序号" DataField="cid">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" Width="5%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="商品">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
                <ItemTemplate>
                    &nbsp;<asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("photo") %>' Width="100px" />
                    <br />
                    <a href='产品详情.aspx?id=<%# Eval("pid") %>'><%# Eval("pname") %></a>
                </ItemTemplate>
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
            <asp:BoundField DataField="price" HeaderText="价格" DataFormatString="{0:N2}元">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:BoundField DataField="nums" HeaderText="数量">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="管理">
                <ItemStyle HorizontalAlign="center" />
                <HeaderStyle HorizontalAlign="center" />
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" 
                        CommandName="Delete" OnClientClick="return confirm('您确认删除');" Text="删除"></asp:LinkButton>
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_cart]"></asp:SqlDataSource>
     <br />
     <span class="auto-style3"><strong>领券下单更划算</strong></span>&nbsp;
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="领取优惠券" />
     <br />
     <br style="color: #CC0000" />
    <div class="basketbtn">
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">继续购物</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/收银台.aspx">去收银台</asp:HyperLink>
&nbsp;</div>
</asp:Content>

