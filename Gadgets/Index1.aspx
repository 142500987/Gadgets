<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="Gadgets.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <p>
        <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
