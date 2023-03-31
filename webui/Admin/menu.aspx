<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="admin_menu" %>

<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple">
            <ParentNodeStyle Font-Bold="False" Font-Size="Larger" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                HorizontalPadding="0px" VerticalPadding="0px" />
            <Nodes>
                <asp:TreeNode Text="卡牌管理系统后台" Value="卡牌管理系统后台">
                    <asp:TreeNode NavigateUrl="~/admin/AddAdmin.aspx" Target="main" Text="添加管理员" 
                        Value="添加管理员"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/admin/ListAdmin.aspx" Target="main" Text="管理员列表" 
                        Value="管理员列表"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/admin/ListUsers.aspx" Target="main" 
                    Text="用户数据统计" Value="用户数据统计"></asp:TreeNode>
                <asp:TreeNode Text=" 卡背信息管理" Value=" 卡背信息管理">
                    <asp:TreeNode NavigateUrl="~/admin/AddBcate.aspx" Target="main" Text="新增卡背信息" 
                        Value="新增卡背信息"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/admin/ListBcate.aspx" Target="main" Text="卡背信息列表" 
                        Value="卡背信息列表"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text=" 套牌管理" Value=" 套牌管理">
                    <asp:TreeNode NavigateUrl="~/admin/AddScate.aspx" Target="main" Text="新增套牌" 
                        Value="新增套牌"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/admin/ListScate.aspx" Target="main" Text="套牌列表" 
                        Value="套牌列表"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="卡牌信息管理" Value="卡牌信息管理">
                    <asp:TreeNode NavigateUrl="~/admin/AddGoods.aspx" Target="main" Text="新增卡牌" 
                        Value="新增卡牌"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/admin/ListGoods.aspx" Target="main" Text="卡牌列表" 
                        Value="卡牌列表"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="订单信息管理" Value="订单信息管理">
                    <asp:TreeNode NavigateUrl="~/admin/ListOrders.aspx" Target="main" Text="订单列表" 
                        Value="订单列表"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
