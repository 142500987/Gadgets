<%@ Page Title="" Language="C#" MasterPageFile="~/Admin masterpage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Gadgets.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
*,::after,::before{box-sizing:border-box}dl,ol,ul{margin-top:0;margin-bottom:1rem}ol,ul{padding-left:2rem}a{color:rgba(var(--bs-link-color-rgb),var(--bs-link-opacity,1));text-decoration:underline}</style>
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
    <p>
        <br />
        <asp:Label runat="server" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" Text="search user" BackColor="Black" ID="Label6"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearch" runat="server" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" AutoPostBack="True"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" Text="id" BackColor="Black"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearch1" runat="server" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" Text="username" BackColor="Black"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearch2" runat="server" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" Text="email" BackColor="Black"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearch3" runat="server" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua" Text="password" BackColor="Black"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearch4" runat="server" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="confirm" OnClick="Button1_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Aqua" BorderWidth="2px" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Aqua" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoginTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [LoginTable] ([Id], [Username], [Email], [PassWord]) VALUES (@Id, @Username, @Email, @PassWord)" SelectCommand="SELECT [Id], [Username], [Email], [PassWord] FROM [LoginTable] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [LoginTable] SET [Username] = @Username, [Email] = @Email, [PassWord] = @PassWord WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tbsearch" Name="Id" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:controlParameter ControlID="tbsearch2" Name="Username" Type="String" />
                <asp:controlParameter ControlID="tbsearch3" Name="Email" Type="String" />
                <asp:controlParameter ControlID="tbsearch4" Name="PassWord" Type="String" />
                <asp:controlParameter ControlID="tbsearch1" Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
