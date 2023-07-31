<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Trangchu" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Blue"
        Text="Các tin tức sự kiện nổi bật đã diễn ra"></asp:Label><br />
    <hr />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1" Width="98%">
        <ItemTemplate>
            <table style="width: 363px">
                <tr>
                    <td colspan="3" style="width: 98%; text-align: left">
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066CC" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                            Text='<%# Eval("Title_News") %>' Font-Bold="True" Font-Size="13pt"></asp:HyperLink></td>
                </tr>
                <tr>
                    <td style="width: 40%; text-align: center" align="center">
                        <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl='<%# "Pictures/"+Eval("Picture") %>'
                            Width="85px" /></td>
                    <td colspan="2" style="width: 60%; text-align: justify">
                        <asp:Label ID="ShortcutLabel" runat="server" Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="width: 60%; text-align: right" colspan="2">
                        &nbsp;<asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("Creatdate") %>' Font-Italic="True" ForeColor="#0033CC"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td colspan="2" style="width: 60%; text-align: right">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/arrow.png" />&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>' Font-Italic="True">Chi tiết</asp:HyperLink></td>
                </tr>
            </table>
            <hr />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="Group_ID" QueryStringField="Group_ID"
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp;
    &nbsp;&nbsp;
</asp:Content>

