<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Gadgets.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" BackColor="Black" BorderColor="Aqua" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="Aqua" RepeatColumns="5">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl='<%# Eval("Image") %>' Width="300px" />
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
                Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image] FROM [Gadget Table] WHERE ([DeviceName] = @DeviceName)">
            <SelectParameters>
                <asp:SessionParameter Name="DeviceName" SessionField="codes" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" OnClick="Button1_Click" Text="purchase" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" BackColor="Black" BorderColor="Aqua" ForeColor="Aqua" Text="thank you for your bussiness"></asp:Label>
    </p>
</asp:Content>
