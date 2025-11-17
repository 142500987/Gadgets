<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Gadgets.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
*,::after,::before{box-sizing:border-box}dl,ol,ul{margin-top:0;margin-bottom:1rem}ol,ul{padding-left:2rem}a{color:rgba(var(--bs-link-color-rgb),var(--bs-link-opacity,1));text-decoration:underline}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td>
                <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#B5C7DE" />
                    <DynamicSelectedStyle BackColor="#507CD1" />
                    <Items>
                        <asp:MenuItem Text="delete" Value="delete">
                            <asp:MenuItem NavigateUrl="~/Delete.aspx" Text="delete1" Value="delete1"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Delete1.aspx" Text="delete2" Value="delete2"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="update" Value="update">
                            <asp:MenuItem Text="update1" Value="update1"></asp:MenuItem>
                            <asp:MenuItem Text="update2" Value="update2"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#507CD1" />
                </asp:Menu>
                <br />
                <br />
                <asp:Label ID="ldlDelete" runat="server" Font-Bold="True" Text="Delete Record"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ldGadgets" runat="server" Font-Bold="True" Text="Enter Gadgets Id"></asp:Label>
                <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                <asp:Button ID="BtnDelete" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Are you sure you want to delete this record??"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="BtnYes" runat="server" Height="26px" Text="Yes" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ldlDone" runat="server" Text="Delete has complete"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Username], [Email], [PassWord] FROM [LoginTable]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>
