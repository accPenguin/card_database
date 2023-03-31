<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="admin_AddAdmin" %>


<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div">
      <table width="50%" border="0" align="center">
            <tr>
                <td height="20" colspan="2" align="center">
                    <h3>
                        新增管理员信息</h3>
                </td>
            </tr>
            <tr>
                <td width="20%" height="20" align="center">
                    用户名
                </td>
                <td width="80%">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredTxtUsername" runat="server" ErrorMessage="请输入用户名" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="20%" height="20" align="center">
                    密码
                </td>
                <td width="80%">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredTxtPassword" runat="server" ErrorMessage="请输入密码" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="20%" height="20" align="center">
                    姓名
                </td>
                <td width="80%">
                    <asp:TextBox ID="txtRealname" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredTxtRealname" runat="server" ErrorMessage="请输入姓名" ControlToValidate="txtRealname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="20%" height="20" align="center">
                    联系方式
                </td>
                <td width="80%">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredTxtContact" runat="server" ErrorMessage="请输入联系方式" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="submit" runat="server" Text="提交" OnClick="submit_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
