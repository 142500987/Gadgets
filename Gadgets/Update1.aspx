<%@ Page Title="" Language="C#" MasterPageFile="~/Admin masterpage.Master" AutoEventWireup="true" CodeBehind="Update1.aspx.cs" Inherits="Gadgets.Update1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
*,::after,::before{box-sizing:border-box}dl,ol,ul{margin-top:0;margin-bottom:1rem}ol,ul{padding-left:2rem}a{color:rgba(var(--bs-link-color-rgb),var(--bs-link-opacity,1));text-decoration:underline}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
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
        <asp:Label ID="search" runat="server" Text="search product" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbid" runat="server" Text="id" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch0" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbdevicecode" runat="server" ForeColor="Aqua" Text="devicecode" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch1" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbdevicename" runat="server" Text="devicename" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch2" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="devicetype" runat="server" Text="devicetype" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch3" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbprice" runat="server" Text="price" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch4" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbifhadpreviousowner" runat="server" Text="ifhadpreviousowner" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch5" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbwarranty" runat="server" Text="warranty" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch6" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbdeviceage" runat="server" Text="deviceage" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch7" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lbimage" runat="server" Text="image" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txsearch8" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="btnlbl" runat="server" Text="update" ForeColor="Aqua" BackColor="Black" BorderColor="Aqua"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="confirm" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" />
    </p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Aqua" BorderWidth="4px" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Aqua" OnRowDataBound="GridView1_RowDataBound" BackColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image] FROM [Gadget Table] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [Gadget Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Gadget Table] ([Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image]) VALUES (@Id, @DeviceCode, @DeviceName, @DeviceType, @Price, @IfHadPreviousOwner, @Warranty, @DeviceAge, @Image)" UpdateCommand="UPDATE [Gadget Table] SET [DeviceCode] = @DeviceCode, [DeviceName] = @DeviceName, [DeviceType] = @DeviceType, [Price] = @Price, [IfHadPreviousOwner] = @IfHadPreviousOwner, [Warranty] = @Warranty, [DeviceAge] = @DeviceAge, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="DeviceCode" Type="String" />
                <asp:Parameter Name="DeviceName" Type="String" />
                <asp:Parameter Name="DeviceType" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="IfHadPreviousOwner" Type="String" />
                <asp:Parameter Name="Warranty" Type="String" />
                <asp:Parameter Name="DeviceAge" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txsearch" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:controlParameter ControlID="txsearch1" Name="DeviceCode" Type="String" />
                <asp:controlParameter ControlID="txsearch2" Name="DeviceName" Type="String" />
                <asp:controlParameter ControlID="txsearch3" Name="DeviceType" Type="String" />
                <asp:controlParameter ControlID="txsearch4" Name="Price" Type="String" />
                <asp:controlParameter ControlID="txsearch5" Name="IfHadPreviousOwner" Type="String" />
                <asp:controlParameter ControlID="txsearch6" Name="Warranty" Type="String" />
                <asp:controlParameter ControlID="txsearch7" Name="DeviceAge" Type="String" />
                <asp:controlParameter ControlID="txsearch8" Name="Image" Type="String" />
                <asp:controlParameter ControlID="txsearch0" Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
