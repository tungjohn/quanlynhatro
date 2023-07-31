<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="Xembaiviet.aspx.cs" Inherits="Admin_Xembaiviet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Những bài viết của thành viên"></asp:Label>
    <hr />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="New_ID"
        DataSourceID="SqlBaiviet" Width="98%">
        <EditItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            New_ID:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:Label ID="New_IDLabel1" runat="server" Text='<%# Eval("New_ID") %>' Font-Bold="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Group_ID:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="Group_IDTextBox" runat="server" Text='<%# Bind("Group_ID") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Title_News:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="Title_NewsTextBox" runat="server" Text='<%# Bind("Title_News") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Shortcut:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="ShortcutTextBox" runat="server" Text='<%# Bind("Shortcut") %>' TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Body:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Picture:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Creatdate:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="CreatdateTextBox" runat="server" Text='<%# Bind("Creatdate") %>'>
            </asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0000ff" width="40%">
                            Tags:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" width="58%">
            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>'>
            </asp:TextBox></td>
                    </tr>
                </table>
            </div>
            &nbsp;
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Cập nhật" Font-Bold="True" CssClass="btn btn-primary btn-sm"></asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Hủy bỏ" Font-Bold="True" CssClass="btn btn-secondary btn-sm"></asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            Group_ID:
            <asp:TextBox ID="Group_IDTextBox" runat="server" Text='<%# Bind("Group_ID") %>'>
            </asp:TextBox><br />
            Title_News:
            <asp:TextBox ID="Title_NewsTextBox" runat="server" Text='<%# Bind("Title_News") %>'>
            </asp:TextBox><br />
            Shortcut:
            <asp:TextBox ID="ShortcutTextBox" runat="server" Text='<%# Bind("Shortcut") %>'>
            </asp:TextBox><br />
            Body:
            <asp:TextBox ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>'>
            </asp:TextBox><br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>'>
            </asp:TextBox><br />
            Creatdate:
            <asp:TextBox ID="CreatdateTextBox" runat="server" Text='<%# Bind("Creatdate") %>'>
            </asp:TextBox><br />
            Tags:
            <asp:TextBox ID="TagsTextBox" runat="server" Text='<%# Bind("Tags") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert">
            </asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0066ff" width="40%">
                            New_ID:</td>
                        <td align="center" style="font-weight: bold; color: #0000ff" width="58%">
                            <asp:Label ID="New_IDLabel" runat="server" Text='<%# Eval("New_ID") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0066ff" width="40%">
                            Group_ID:</td>
                        <td align="center" style="font-weight: bold; color: #0000ff" width="58%">
                            <asp:Label ID="Group_IDLabel" runat="server" Text='<%# Bind("Group_ID") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; color: #0066ff" width="40%">
                            Tags:</td>
                        <td align="center" style="font-weight: bold; color: #0000ff" width="58%">
                            <asp:Label ID="TagsLabel" runat="server" Text='<%# Bind("Tags") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2" width="98%">
                            <asp:Label ID="Title_NewsLabel" runat="server" Font-Bold="True" ForeColor="#0066CC"
                                Text='<%# Bind("Title_News") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 100px">
                            <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl='<%# "~/Pictures/"+Eval("Picture") %>'
                                Width="150px" />
                            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>'></asp:Label></td>
                        <td style="text-align: justify" width="58%">
                            <asp:Label ID="ShortcutLabel" runat="server" Font-Bold="True" Font-Italic="True"
                                Text='<%# Bind("Shortcut") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: justify" width="98%">
                            <asp:Label ID="BodyLabel" runat="server" Text='<%# Bind("Body") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td align="right" width="58%">
                            <asp:Label ID="CreatdateLabel" runat="server" Font-Italic="True" ForeColor="#00CCCC"
                                Text='<%# Bind("Creatdate") %>'></asp:Label></td>
                    </tr>
                </table>
            </div>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Font-Bold="True" Text="Sửa" CssClass="btn btn-warning btn-sm"></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Font-Bold="True" Text="Xóa" CssClass="btn btn-danger btn-sm"></asp:LinkButton>
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlBaiviet" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tb_DetailNews] WHERE [New_ID] = @original_New_ID AND [Group_ID] = @original_Group_ID AND [Title_News] = @original_Title_News AND [Shortcut] = @original_Shortcut AND [Body] = @original_Body AND [Picture] = @original_Picture AND [Creatdate] = @original_Creatdate AND [Tags] = @original_Tags"
        InsertCommand="INSERT INTO [Tb_DetailNews] ([Group_ID], [Title_News], [Shortcut], [Body], [Picture], [Creatdate], [Tags]) VALUES (@Group_ID, @Title_News, @Shortcut, @Body, @Picture, @Creatdate, @Tags)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tb_DetailNews] WHERE ([Group_ID] = @Group_ID) ORDER BY [Creatdate] DESC"
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
            <asp:QueryStringParameter DefaultValue="10" Name="Group_ID" QueryStringField="Group_ID"
                Type="Int32" />
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
    <hr />
    &nbsp; &nbsp;
</asp:Content>

