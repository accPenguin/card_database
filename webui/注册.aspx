<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="注册.aspx.cs" Inherits="注册" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <table style="width: 100%; border-collapse: collapse; height: 100%; border: 2px solid #6699FF" 
                align="left">
                <tr>
                    <td class="auto-style3">
                        *用户名：</td>
                    <td align="left">
                        <asp:TextBox ID="txtUsername" runat="server" class="input" CssClass="auto-style3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredTxtUsername0" runat="server" 
                            ControlToValidate="txtUsername" ErrorMessage="请输入用户名" CssClass="auto-style3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        *密码：</td>
                    <td align="left" style="color: #FFFF66">
                        <asp:TextBox ID="txtPassword" runat="server"  TextMode="password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredTxtPassword0" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        *确认密码：</td>
                    <td align="left" style="color: #FFFF66">
                        <asp:TextBox ID="txtRepassword" runat="server" 
                            TextMode="password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtRepassword" ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtPassword" ControlToValidate="txtRepassword" 
                            ErrorMessage="密码与确认密码不一致"></asp:CompareValidator>
                    </td>
                </tr>
             
             
               
                <tr>
                    <td style="color: #FFFF66">
                        联系方式：</td>
                    <td align="left">
                        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredTxtContact0" runat="server" 
                            ControlToValidate="txtContact" ErrorMessage="请输入联系方式" CssClass="auto-style4"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtContact" ErrorMessage="请填写正确的电话！" SetFocusOnError="True" 
                            ValidationExpression="^(13[0-9]|15[0|3|6|7|8]|18[8|9])\d{8}$" CssClass="auto-style4"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFF66">
                        电子邮箱：</td>
                    <td align="left">
                        <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredTxtEmail0" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="请输入电子邮件" CssClass="auto-style4"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="请填写正确形式的邮箱！" SetFocusOnError="True" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style4"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFF99">
                        联系地址：</td>
                                                        <td align="left">
                                                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="txtAddress" ErrorMessage="请输入联系地址"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:LinkButton ID="LinkButton2" runat="server"
                                                                OnClick="Button1_Click">提交注册</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
           
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            color: #FF3300;
        }
        .auto-style4 {
            color: #FFFF66;
        }
    </style>
</asp:Content>


