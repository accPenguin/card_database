<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBcate.aspx.cs" Inherits="admin_AddBcate" %>


<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        请输入图片的url（~/image/中立/xxx.png)：<asp:TextBox ID="tbID" runat="server"></asp:TextBox>
        <br />
    
  
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
