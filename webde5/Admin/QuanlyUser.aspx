<%@ Page Language="C#" MasterPageFile="~/Admin/Quantri_web.master" AutoEventWireup="true" CodeFile="QuanlyUser.aspx.cs" Inherits="Admin_QuanlyUser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Quản lý thông tin thành viên"></asp:Label>
    <hr />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Username"
        DataSourceID="SqlDataSource1" Width="98%">
        <EditItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Username:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="UsernameLabel1" runat="server" Text='<%# Eval("Username") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Manhom:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="ManhomTextBox" runat="server" Text='<%# Bind("Manhom") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Hoten:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Pass:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="PassTextBox" runat="server" Text='<%# Bind("Pass") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Email:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <hr />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Font-Bold="True" Text="Cập nhật" CssClass="btn btn-primary btn-sm"></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Font-Bold="True" Text="Hủy bỏ" CssClass="btn btn-secondary btn-sm"></asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Username:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Manhom:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="ManhomTextBox" runat="server" Text='<%# Bind("Manhom") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Hoten:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Pass:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="PassTextBox" runat="server" Text='<%# Bind("Pass") %>'></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Email:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <hr />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Font-Bold="True" Text="Cập nhật" CssClass="btn btn-primary btn-sm"></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Font-Bold="True" Text="Hủy bỏ" CssClass="btn btn-secondary btn-sm"></asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <div style="text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Username:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Manhom:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="ManhomLabel" runat="server" Text='<%# Bind("Manhom") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Hoten:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="HotenLabel" runat="server" Text='<%# Bind("Hoten") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Pass:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="PassLabel" runat="server" Text='<%# Bind("Pass") %>'></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="font-weight: bold; width: 48%; color: #0000ff">
                            Email:</td>
                        <td style="width: 100px">
                        </td>
                        <td align="left" style="width: 50%">
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>'></asp:Label></td>
                    </tr>
                </table>
            </div>
            <hr />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Font-Bold="True" Text="Sửa" CssClass="btn btn-warning btn-sm"></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Font-Bold="True" Text="Xóa" CssClass="btn btn-danger btn-sm"></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Font-Bold="True" Text="Nhập" CssClass="btn btn-primary btn-sm"></asp:LinkButton>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [nhom] WHERE [Username] = @original_Username AND [Manhom] = @original_Manhom AND [Hoten] = @original_Hoten AND [Pass] = @original_Pass AND [Email] = @original_Email"
        InsertCommand="INSERT INTO [nhom] ([Username], [Manhom], [Hoten], [Pass], [Email]) VALUES (@Username, @Manhom, @Hoten, @Pass, @Email)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [nhom]"
        UpdateCommand="UPDATE [nhom] SET [Manhom] = @Manhom, [Hoten] = @Hoten, [Pass] = @Pass, [Email] = @Email WHERE [Username] = @original_Username AND [Manhom] = @original_Manhom AND [Hoten] = @original_Hoten AND [Pass] = @original_Pass AND [Email] = @original_Email">
        <DeleteParameters>
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Manhom" Type="Int32" />
            <asp:Parameter Name="original_Hoten" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Manhom" Type="Int32" />
            <asp:Parameter Name="Hoten" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Manhom" Type="Int32" />
            <asp:Parameter Name="original_Hoten" Type="String" />
            <asp:Parameter Name="original_Pass" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Manhom" Type="Int32" />
            <asp:Parameter Name="Hoten" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp;&nbsp;
</asp:Content>

