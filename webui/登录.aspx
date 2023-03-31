<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="登录.aspx.cs" Inherits="登录" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    <table style="width: 600px; height: 150px; border: 2px solid #6699FF">
        <tr>
            <td>
                <font color="red">*</font>用户名：</td>
                                                <td>
                                                    <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredTxtUsername" runat="server" 
                                                        ControlToValidate="txtUsername" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>
            </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font color="red">*</font>密码：</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" class="input" TextMode="password"></asp:TextBox>
                                                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredTxtPassword" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>
                                                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="text-align: center" Text="登录" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    &nbsp
    </asp:Content>
