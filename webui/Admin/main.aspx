<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="admin_main" %>


<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 1200px;
            border-collapse: collapse;
            height: 600px;
            border: 2px solid #99CCFF;
        }
        .auto-style1 {
            width: 20%;
        }
    </style>
</head>
<body style="background-color:white">
    <form id="form1" runat="server">
    尊敬的管理员，欢迎您！
    </form>
    <table class="style1">
        <tr>
            <td style="background-color: gray; " class="auto-style1">
            <iframe src="menu.aspx"  width="100%" height="600px" scrolling="no"
                       ></iframe>
                &nbsp;</td>
            <td style="width:80%">
             <iframe src="" name="main" width="100%" height="600px" scrolling="yes" frameborder="0">
                    </iframe>
                &nbsp;</td>
        </tr>
    </table>
</body>
</html>
