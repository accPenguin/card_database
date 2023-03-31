<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="收银台.aspx.cs" Inherits="收银台" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1000px; height: 600px; border: 2px solid #99CCFF">
        <tr>
            <td align="left" bgcolor="#99CCFF" 
                style="font-family: 黑体; font-size: x-large; font-weight: bold; font-style: normal">
                收货人信息：</td>
        </tr>
        <tr>
            <td>
                <table style="width: 837px; height: 150px">
                    <tr>
                        <td class="auto-style3">
                            *收货人姓名：</td>
                        <td align="left">
                            <asp:TextBox ID="txtReceiver" runat="server" class="input" 
                                Style="width: 200px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtReceiver" runat="server" 
                                ControlToValidate="txtReceiver" ErrorMessage="请输入收货人" style="color: #FFFF99"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="auto-style4">*地址</span>：</td>
                        <td align="left">
                            <asp:TextBox ID="txtTime" runat="server" class="input" Style="width: 350px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtAddress" runat="server" 
                                ControlToValidate="txtTime" ErrorMessage="请输入地址" style="color: #FFFF66"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            *联系方式：</td>
                        <td align="left">
                            <asp:TextBox ID="txtContact" runat="server" class="input" Style="width: 150px;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredTxtContact" runat="server" 
                                ControlToValidate="txtContact" ErrorMessage="请输入联系方式" style="color: #FFFF66"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#99CCFF" 
                style="font-family: 黑体; font-size: x-large; font-weight: bold; font-style: normal">
                订单信息：</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" 
                    ForeColor="#333333" GridLines="None" Height="180px" Width="100%" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="商品">
                            <ItemStyle HorizontalAlign="center" />
                            <HeaderStyle HorizontalAlign="center" />
                            <ItemTemplate>
                                <img src='image/product_pic.png' style="height: 114px; width: 114px" />
                                    
                                <br />
                                <a href='产品详情.aspx?id=<%# Eval("pid") %>'>
                                                <%# Eval("pname") %></a>
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
            </td>
        </tr>
        <tr>
            <td align="left">
                原价：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;-
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                总价格：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;元<br />
                <br />
                <span class="auto-style8"><strong>支付时请备注姓名，方便管理员确认！</strong></span><br />
                <asp:Image ID="Image2" runat="server" Height="572px" ImageUrl="~/image/wxpay.jpg" Width="468px" />
&nbsp;<asp:Image ID="Image3" runat="server" Height="567px" ImageUrl="~/image/alipay.jpg" Width="443px" />
                <br />
                </td>
        </tr>
        <tr>
            <td align="right">
                <a  href="cartt.aspx">返回修改</a>
                <asp:LinkButton ID="LinkButton1" runat="server"  
                    OnClick="Button1_Click">立即提交</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            color: #FFFF99;
        }
        .auto-style4 {
            color: #FFFF00;
        }
        .auto-style5 {
            color: #FFFF66;
        }
        .auto-style8 {
            color: #FF0000;
            font-size: xx-large;
        }
    </style>
</asp:Content>



