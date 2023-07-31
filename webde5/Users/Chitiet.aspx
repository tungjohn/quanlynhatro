<%@ Page Language="C#" MasterPageFile="~/Users/Trangchu.master" AutoEventWireup="true" CodeFile="Chitiet.aspx.cs" Inherits="Chitiet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <br />
                        <asp:Label ID="Label2" runat="server" Font-Size="14pt" Text="Bản tin chi tiết:" Width="98%" ForeColor="#0000FF"></asp:Label>&nbsp;</div>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource1" Width="98%">
        <ItemTemplate>
            <br />
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="text-align: justify">
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title_News") %>' ForeColor="#000099" Font-Bold="True" Font-Italic="False" Font-Size="12pt" Width="100%"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 21px; text-align: justify;" width="48%">
                            <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="160px" /></td>
                        <td style="height: 21px; text-align: justify;" width="50%">
                            <asp:Label ID="ShortcutLabel" runat="server" Text='<%# Eval("Shortcut") %>' ForeColor="Black" Font-Italic="True" Width="100%" Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: justify" align="center" valign="top" width="98%">
                            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' Width="100%"></asp:Label><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 70px">
                            </td>
                        <td style="text-align: right;" width="50%">
                            <asp:Label ID="CreatdateLabel" runat="server" Text='<%# Eval("Creatdate") %>' ForeColor="#009999" Font-Italic="True"></asp:Label>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 70px; height: 21px;">
                        </td>
                        <td style="text-align: right; height: 21px;" width="50%">
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Nhomtintuc.aspx?Group_ID="+Eval("Group_ID") %>' Font-Italic="True" ForeColor="Red" Font-Bold="True"><< Quay lai</asp:HyperLink>&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList><div class="comment"> <div class="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop" data-href="https://phimmoiplus.net/info/xam-nhap-pm8985" data-colorscheme="dark" data-width="980" data-order-by="reverse_time" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=1057881674616601&amp;color_scheme=dark&amp;container_width=970&amp;height=100&amp;href=https%3A%2F%2Fphimmoiplus.net%2Finfo%2Fxam-nhap-pm8985&amp;locale=vi_VN&amp;order_by=reverse_time&amp;sdk=joey&amp;version=v7.0&amp;width=980"><span style="vertical-align: bottom; width: 980px; height: 252px;"><iframe name="f32960eb75efec8" width="980px" height="100px" data-testid="fb:comments Facebook Social Plugin" title="fb:comments Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v7.0/plugins/comments.php?app_id=1057881674616601&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfa5b4539820ab8%26domain%3Dphimchill.net%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fphimchill.net%252Ff2c4351e9689c9%26relation%3Dparent.parent&amp;color_scheme=dark&amp;container_width=970&amp;height=100&amp;href=https%3A%2F%2Fphimmoiplus.net%2Finfo%2Fxam-nhap-pm8985&amp;locale=vi_VN&amp;order_by=reverse_time&amp;sdk=joey&amp;version=v7.0&amp;width=580" style="border: none; visibility: visible; width: 580px; height: 552px;" class=""></iframe></span></div> </div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE (([Group_ID] = @Group_ID) AND ([New_ID] = @New_ID))">
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" />
            <asp:QueryStringParameter Name="New_ID" QueryStringField="New_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            <hr />
    <br />
    <span style="font-size: 12pt; color: #0000ff; text-decoration: underline"><em><strong>
        <div style="text-align: center">
            <table style="width: 100%">
                <tr>
                    <td style="width: 60%; text-align: left">
                        <asp:Label ID="Label1" runat="server" Text="Các tin bài liên quan:" Width="226px"></asp:Label></td>
                </tr>
            </table>
        </div>
    </strong></em></span>
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="New_ID" DataSourceID="SqlDataSource2" Width="98%">
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100%; text-align: left" align="left">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/arrow.png" />&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Italic="False" NavigateUrl='<%# "Chitiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>'
                                Text='<%# Eval("Title_News") %>'></asp:HyperLink></td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID) ORDER BY [Creatdate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <hr />
</asp:Content>

