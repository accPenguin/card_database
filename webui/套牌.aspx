<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="套牌.aspx.cs" Inherits="套牌" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="goodList" runat="server" RepeatColumns="4" style="margin-right: 0px">
        <ItemTemplate>
            <table 
    
                style="width: 150px; height: 250px; ">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image2" runat="server" Height="1076px" Width="232px" ImageUrl='<%# Eval("photo") %>' style="margin-right: 55px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            
               
               
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        width: 353px;
    }
    .auto-style4 {
        height: 18px;
        width: 353px;
    }
</style>
</asp:Content>



