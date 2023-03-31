<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddScate.aspx.cs" Inherits="admin_AddScate" %>


<head runat="server">
    <title>无标题页</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">请输入套牌图片url（~/image/套牌/xxx.png）：</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">请输入套牌代码：</td>
                <td>
                    <asp:TextBox ID="photo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="提交" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
