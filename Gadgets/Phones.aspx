<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Phones.aspx.cs" Inherits="Gadgets.Phones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <asp:DataList ID="DataList1" runat="server" BorderColor="Aqua" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="Aqua" RepeatColumns="6" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Aqua" Height="350px" ImageUrl='<%# Eval("Image") %>' Width="300px" />
            <br />
            DeviceCode:
            <asp:Label ID="DeviceCodeLabel" runat="server" Text='<%# Eval("DeviceCode") %>' />
            <br />
            DeviceName:
            <asp:Label ID="DeviceNameLabel" runat="server" Text='<%# Eval("DeviceName") %>' />
            <br />
            DeviceType:
            <asp:Label ID="DeviceTypeLabel" runat="server" Text='<%# Eval("DeviceType") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            IfHadPreviousOwner:
            <asp:Label ID="IfHadPreviousOwnerLabel" runat="server" Text='<%# Eval("IfHadPreviousOwner") %>' />
            <br />
            Warranty:
            <asp:Label ID="WarrantyLabel" runat="server" Text='<%# Eval("Warranty") %>' />
            <br />
            DeviceAge:
            <asp:Label ID="DeviceAgeLabel" runat="server" Text='<%# Eval("DeviceAge") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image] FROM [Gadget Table] WHERE ([DeviceType] = @DeviceType)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="DeviceType" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
