<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete1.aspx.cs" Inherits="Gadgets.Delete1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="delete products"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbsearchfordelete" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" AutoPostBack="True"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btndel" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="delete" OnClick="btndel_Click" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="are you sure" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btncon" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="confirm" OnClick="btncon_Click" Visible="False" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncan" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="cancel" OnClick="btncan_Click" Visible="False" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="record has been deleted" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Aqua" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Aqua">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="DeviceCode" HeaderText="DeviceCode" SortExpression="DeviceCode" />
                <asp:BoundField DataField="DeviceName" HeaderText="DeviceName" SortExpression="DeviceName" />
                <asp:BoundField DataField="DeviceType" HeaderText="DeviceType" SortExpression="DeviceType" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="IfHadPreviousOwner" HeaderText="IfHadPreviousOwner" SortExpression="IfHadPreviousOwner" />
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                <asp:BoundField DataField="DeviceAge" HeaderText="DeviceAge" SortExpression="DeviceAge" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Gadget Table] WHERE (DeviceCode = @DeviceCode)" SelectCommand="SELECT DISTINCT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image] FROM [Gadget Table] WHERE ([DeviceCode] = @DeviceCode)">
            <DeleteParameters>
                <asp:controlParameter ControlID="tbsearchfordelete" Name="DeviceCode" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tbsearchfordelete" Name="DeviceCode" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
