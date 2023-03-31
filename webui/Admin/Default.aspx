<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>


<head id="Head1" runat="server">
    <title>卡牌管理系统后台</title>
 
</head>
<body style="background-size:cover">
    <div id="main">
        <form id="form1" runat="server" style="">
            <table class="auto-style1">
                <tr class="headfont">
                    <td colspan="2" >
                        <br />
                        &nbsp;卡牌管理系统后台登录
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">请输入用户名：</td>
                    <td class="auto-style8" ><asp:TextBox ID="txtUsername" runat="server" TabIndex="1" value="" size="20" MaxLength="20"
                    class="inputbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" ErrorMessage="请输入用户名"
                    ControlToValidate="txtUsername"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2">请输入密码：</td>
                    <td class="auto-style8" ><asp:TextBox ID="txtPassword" TextMode="Password" runat="server" TabIndex="2" size="20"
                    class="inputbox" MaxLength="20"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" ErrorMessage="请输入密码"
                    ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
                </tr>
                
                <tr>
                    <td colspan="2" class="auto-style6" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>  
        </form>
    </div>
</body>
</html>
