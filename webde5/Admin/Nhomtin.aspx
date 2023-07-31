<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="Nhomtin.aspx.cs" Inherits="Admin_Nhomtin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Blue"
        Text="Các tin tức sự kiện nổi bật đã diễn ra"></asp:Label><br />
    <hr />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="New_ID"
        DataSourceID="SqlDataSource1" Width="98%">
        <EditItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
            New_ID:</td>
                        <td align="left" width="65%">
                            
                                <asp:Label ID="New_IDLabel1" runat="server" Text='<%# Eval("New_ID") %>'></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Group_ID:</td>
                        <td align="left" width="65%">
                            
                                <asp:TextBox ID="Group_IDTextBox" runat="server" Text='<%# Bind("Group_ID") %>'>
                                </asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Title_News:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="Title_NewsTextBox" runat="server" Text='<%# Bind("Title_News") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Shortcut:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="ShortcutTextBox" runat="server" Text='<%# Bind("Shortcut") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Body:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Picture:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Creatdate:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="CreatdateTextBox" runat="server" Text='<%# Bind("Creatdate") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="33%" style="font-weight: bold; color: #0066cc" align="right">
                            Tags:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>'>
            </asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <hr />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Cập nhật" CssClass="btn btn-primary btn-sm"></asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Hủy bỏ" CssClass="btn btn-secondary btn-sm"></asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Group_ID:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="Group_IDTextBox" runat="server" Text='<%# Bind("Group_ID") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Title_News:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="Title_NewsTextBox" runat="server" Text='<%# Bind("Title_News") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Shortcut:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="ShortcutTextBox" runat="server" Text='<%# Bind("Shortcut") %>' TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Body:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Picture:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Creatdate:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="CreatdateTextBox" runat="server" Text='<%# Bind("Creatdate") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" width="35%" style="font-weight: bold; color: #0066cc">
                            Tags:</td>
                        <td align="left" width="65%">
            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>'>
            </asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <hr />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Cập nhật" CssClass="btn btn-primary btn-sm"></asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Hủy bỏ" CssClass="btn btn-secondary btn-sm"></asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px; text-align: right">
                            <strong>
                            Mã tin:</strong></td>
                        <td style="text-align: left" width="58%">
                            <asp:Label ID="New_IDLabel" runat="server" Text='<%# Eval("New_ID") %>' Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">
                            <strong>Mã nhóm:</strong></td>
                        <td style="text-align: left" width="58%">
                            <asp:Label ID="Group_IDLabel" runat="server" Text='<%# Bind("Group_ID") %>' Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right">
                            <strong>
                            Nhóm:</strong></td>
                        <td style="text-align: left" width="58%">
                            <asp:Label ID="TagsLabel" runat="server" Text='<%# Bind("Tags") %>' Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left" width="98%">
                            <asp:Label ID="Title_NewsLabel" runat="server" Font-Bold="True" ForeColor="#0033CC"
                                Text='<%# Bind("Title_News") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" width="40%">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="100px" /><br />
                            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>'></asp:Label></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Font-Italic="True" Text='<%# Bind("Shortcut") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: justify" width="98%">
                            <asp:Label ID="BodyLabel" runat="server" Text='<%# Bind("Body") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="text-align: right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Text='<%# Bind("Creatdate") %>'></asp:Label></td>
                    </tr>
                </table>
            </div>
            <hr />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Sửa" Font-Bold="True" CssClass="btn btn-warning btn-sm"></asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Xóa" Font-Bold="True" CssClass="btn btn-danger btn-sm"></asp:LinkButton>&nbsp; &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Text="Nhập" Font-Bold="True" CssClass="btn btn-primary btn-sm"></asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tb_DetailNews] WHERE [New_ID] = @original_New_ID AND [Group_ID] = @original_Group_ID AND [Title_News] = @original_Title_News AND [Shortcut] = @original_Shortcut AND [Body] = @original_Body AND [Picture] = @original_Picture AND [Creatdate] = @original_Creatdate AND [Tags] = @original_Tags"
        InsertCommand="INSERT INTO [Tb_DetailNews] ([Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (@Group_ID, @Title_News, @Shortcut, @Body, @Picture, @Creatdate, @Tags)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID)"
        UpdateCommand="UPDATE [Tb_DetailNews] SET [Group_ID] = @Group_ID, [Title_News] = @Title_News, [Shortcut] = @Shortcut, [Body] = @Body, [Picture] = @Picture, [Creatdate] = @Creatdate, [Tags] = @Tags WHERE [New_ID] = @original_New_ID AND [Group_ID] = @original_Group_ID AND [Title_News] = @original_Title_News AND [Shortcut] = @original_Shortcut AND [Body] = @original_Body AND [Picture] = @original_Picture AND [Creatdate] = @original_Creatdate AND [Tags] = @original_Tags">
        <DeleteParameters>
            <asp:Parameter Name="original_New_ID" Type="Int32" />
            <asp:Parameter Name="original_Group_ID" Type="Int32" />
            <asp:Parameter Name="original_Title_News" Type="String" />
            <asp:Parameter Name="original_Shortcut" Type="String" />
            <asp:Parameter Name="original_Body" Type="String" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_Creatdate" Type="DateTime" />
            <asp:Parameter Name="original_Tags" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Group_ID" Type="Int32" />
            <asp:Parameter Name="Title_News" Type="String" />
            <asp:Parameter Name="Shortcut" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Creatdate" Type="DateTime" />
            <asp:Parameter Name="Tags" Type="String" />
            <asp:Parameter Name="original_New_ID" Type="Int32" />
            <asp:Parameter Name="original_Group_ID" Type="Int32" />
            <asp:Parameter Name="original_Title_News" Type="String" />
            <asp:Parameter Name="original_Shortcut" Type="String" />
            <asp:Parameter Name="original_Body" Type="String" />
            <asp:Parameter Name="original_Picture" Type="String" />
            <asp:Parameter Name="original_Creatdate" Type="DateTime" />
            <asp:Parameter Name="original_Tags" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Group_ID" QueryStringField="Group_ID" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Group_ID" Type="Int32" />
            <asp:Parameter Name="Title_News" Type="String" />
            <asp:Parameter Name="Shortcut" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Creatdate" Type="DateTime" />
            <asp:Parameter Name="Tags" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

