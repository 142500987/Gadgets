<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" 
    CodeBehind="Cameras.aspx.cs" Inherits="Gadgets.Cameras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #000;
            color: #fff;
            font-family: 'Poppins', sans-serif;
        }

        /* ----- CARD STYLE ----- */
        .card {
            background: #1a1a1a;
            border-radius: 12px;
            padding: 15px;
            margin: 10px;
            text-align: center;
            width: 300px;
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.1);
            transition: 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.3);
        }

        .card img {
            border-radius: 12px;
            width: 100%;
            height: 250px;
            object-fit: cover;
            border: 1px solid #00ccff;
        }

        .label-title {
            font-weight: 600;
            color: #00ccff;
        }

        .value {
            color: #f2f2f2;
        }

        .info-row {
            margin: 4px 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>

    <asp:DataList ID="DataList1" runat="server" 
        DataKeyField="Id" 
        DataSourceID="SqlDataSource1" 
        RepeatColumns="4" 
        RepeatDirection="Horizontal"
        CellPadding="10">

        <ItemTemplate>
            <div class="card">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl='<%# Eval("Image") %>' />

                <div class="info-row">
                    <span class="label-title">Device Code: </span>
                    <span class="value"><%# Eval("DeviceCode") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Name: </span>
                    <span class="value"><%# Eval("DeviceName") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Type: </span>
                    <span class="value"><%# Eval("DeviceType") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Price: </span>
                    <span class="value">$<%# Eval("Price") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Used Before: </span>
                    <span class="value"><%# Eval("IfHadPreviousOwner") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Warranty: </span>
                    <span class="value"><%# Eval("Warranty") %></span>
                </div>

                <div class="info-row">
                    <span class="label-title">Age: </span>
                    <span class="value"><%# Eval("DeviceAge") %> years</span>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image]
                       FROM [Gadget Table]
                       WHERE ([DeviceType] = @DeviceType)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="DeviceType" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
