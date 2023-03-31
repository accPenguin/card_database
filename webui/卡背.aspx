<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="卡背.aspx.cs" Inherits="卡背" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="kabeilist" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table 
    
                style="width: 250px;  height: 298px;">
                <tr>
                    <td style="width: 202px">
                        <asp:Image ID="Image2" runat="server" Height="227px" Width="200px" ImageUrl='<%# Eval("photo") %>' />
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
               
                
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>





