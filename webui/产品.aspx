<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="产品.aspx.cs" Inherits="产品" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table style="height:400px; width:1000px; border-bottom-color:Blue; border-bottom-style:solid; border-width:medium">
       
        <tr style="height:300px; border-bottom-color:Blue; border-bottom-style:solid; border-bottom-width:medium; ">
            <td valign="top" class="auto-style3" >
            
               <span class="listfont1">欢迎购买</span>
                 <asp:DataList ID="hotList" runat="server" RepeatColumns="1" DataSourceID="SqlDataSource1" Width="1100px">
                     <ItemTemplate>
                         <table style="width: 1009px; height: 577px">
                             <tr>
                                 <td class="auto-style4">
                                     <asp:Image ID="Image2" runat="server" Height="419px" ImageUrl='<%# Eval("photo") %>' Width="329px" />
                                     &nbsp;&nbsp;<br />
                                     <asp:Label ID="Label4" runat="server" Text='<%# String.Format("{0:F}",Eval("price")) %>'></asp:Label>
                                     元<br /> 
                                     <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl='<%# Eval("pid","产品详情.aspx?pid={0}") %>' Text='<%# Eval("pname") %>'></asp:HyperLink>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="height: 32px">
                                     &nbsp;</td>
                             </tr>
                         </table>
                     </ItemTemplate>
                </asp:DataList>
            
                
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardDataBase20220519 %>" SelectCommand="SELECT * FROM [tb_product]"></asp:SqlDataSource>
            
                
            
            </td>
        </tr>
    </table>    
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 42%;
        }
    .auto-style4 {
        height: 146px;
    }
    </style>
</asp:Content>



