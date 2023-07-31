<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="Chitiet.aspx.cs" Inherits="Admin_Chitiet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Bản tin chi tiết"></asp:Label>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="text-align: left" width="98%">
                            <asp:Label ID="Title_NewsLabel" runat="server" Font-Bold="True" ForeColor="#0066CC"
                                Text='<%# Eval("Title_News") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="160px" /></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Font-Bold="True" Font-Italic="True"
                                Text='<%# Eval("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: justify" width="98%">
                            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("Creatdate") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True"
                                ForeColor="#FF0000" NavigateUrl='<%# "Trangchu.aspx?Group_ID="+Eval("Group_ID") %>'><< Quay lại</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
            <hr />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE (([New_ID] = @New_ID) AND ([Group_ID] = @Group_ID))">
        <SelectParameters>
            <asp:QueryStringParameter Name="New_ID" QueryStringField="New_ID" Type="Int32" />
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

