<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGoods.aspx.cs" Inherits="admin_AddGoods" %>


<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" width="100%" align="center">
        <tr>
            <td align="center" colspan="2" height="20">
                <h3>
                    新增商品信息</h3>
            </td>
        </tr>
        <tr>
            <td align="center" height="20" width="20%">
                商品名称 
            </td>
            <td width="80%">
                <asp:TextBox ID="txtGoodsname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredTxtGoodsname" runat="server" 
                    ControlToValidate="txtGoodsname" ErrorMessage="请输入商品名称"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
      
       
        <tr>
            <td align="center" height="20" width="20%">
                价格 
            </td>
            <td width="80%">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredTxtPrice" runat="server" 
                    ControlToValidate="txtPrice" ErrorMessage="请输入价格"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" height="20" width="20%">
                库存 
            </td>
            <td width="80%">
                <asp:TextBox ID="txtStorage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredTxtStorage" runat="server" 
                    ControlToValidate="txtStorage" ErrorMessage="请输入库存"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="提交" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
