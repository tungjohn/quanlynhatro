<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Admin_Trangchu" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Blue"
        Text="Các tin tức sự kiện nổi bật đã diễn ra"></asp:Label>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1"
        Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="text-align: left" width="98%">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="#0066CC"
                                NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>'></asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td align="center" style="text-align: center" width="40%">
                            <asp:Image ID="Image1" runat="server" Height="85px" Width="85px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>' /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Font-Bold="False" Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("Creatdate") %>' Font-Italic="True" ForeColor="#0066CC"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/arrow.png" />&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" ForeColor="#FF0000" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'>Chi tiết</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
            <hr />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Group_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

