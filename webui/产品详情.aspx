<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="产品详情.aspx.cs" Inherits="产品详情" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1000px; height: 600px">
        <tr>
            <td rowspan="6">
                <asp:Image ID="Image2" runat="server" Height="505px" Width="389px" />
            </td>
            <td>商品名：</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>价格：</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;元</td>
        </tr>
        <tr>
            <td style="height: 40px">销量：</td>
            <td style="height: 40px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
      
        <tr>
            <td>购买：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; 库存：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                件</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">加入购物车</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>快点击加入购物车购买吧！</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



