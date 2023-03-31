<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="查询结果页面.aspx.cs" Inherits="查询结果页面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="goodList" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table 
    
                style="width: 150px;  height: 250px; ">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image2" runat="server" Height="375px" Width="267px" ImageUrl='<%# Eval("photo") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl='<%# Eval("pid","产品详情.aspx?pid={0}") %>' Text='<%# Eval("pname") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# String.Format("{0:F}",Eval("price")) %>'></asp:Label>
                        元</td>
                </tr>
               
                <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl='<%# Eval("pid","产品详情.aspx?pid={0}") %>'>查看商品详情</asp:HyperLink>
                    </td>

                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_product]"></asp:SqlDataSource>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 229px;
        }
        .auto-style4 {
            height: 18px;
            width: 229px;
        }
        .auto-style5 {
            height: 8px;
            width: 229px;
        }
    </style>
</asp:Content>



