<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gadgets.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="height: 26px">
                <asp:Label ID="ldlUsrename" runat="server" BackColor="Black" BorderColor="Aqua" BorderStyle="Groove" Font-Bold="True" Font-Names="Berlin Sans FB Demi" ForeColor="Aqua" Text="Username"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="TxtUsername" runat="server" OnTextChanged="TxtUsername_TextChanged" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="ldlPassword" runat="server" BackColor="Black" BorderColor="Aqua" BorderStyle="Double" Font-Bold="True" Font-Names="Berlin Sans FB Demi" ForeColor="Aqua" Text="PassWord"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtPassword" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="Login" OnClick="btnLogin_Click" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" />
            </td>
            <td>
                <asp:Button ID="btnretry" runat="server" Text="retry" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Aqua" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Vertical" ForeColor="Aqua">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Username], [Email], [PassWord] FROM [LoginTable]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
