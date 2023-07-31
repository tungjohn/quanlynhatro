<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Dang_Ky.aspx.cs" Inherits="Dang_Ky" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#0000FF"
        Text="Đăng ký thành viên Website"></asp:Label><br />
    <hr />
    <div style="text-align: center">
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Tên đăng nhập"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Ho vạ̀ tên" Width="87px"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:TextBox ID="TextBox2" runat="server"
        Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Mật khẩu"></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="TextBox3" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="E-mail "></asp:Label></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
    <asp:TextBox ID="TextBox4" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
                </td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" 
        OnClick="Button1_Click" Text="Đăng Ký" CssClass="btn btn-success btn-sm" /></td>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 50%">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" CssClass="btn btn-danger btn-sm" OnClick="Button2_Click"
                        Text="Thoát" /></td>
            </tr>
        </table>
    </div>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
</asp:Content>

