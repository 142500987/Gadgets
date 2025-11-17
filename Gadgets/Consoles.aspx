<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Consoles.aspx.cs" Inherits="Gadgets.Consoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body {
            background-color: #0a58ca;
            color: #f5f5f5;
            font-family: 'Poppins', sans-serif;
        }

        /* Card styles */
        .console-card {
            width: 260px;
            background: #061e4a;
            border-radius: 14px;
            padding: 15px;
            margin: 18px;
            text-align: center;
            border: 1px solid rgba(0, 255, 255, 0.35);
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.25);
            transition: 0.28s ease-in-out;
        }

        .console-card:hover {
            transform: translateY(-6px) scale(1.03);
            box-shadow: 0 0 30px rgba(0, 255, 255, 0.55);
        }

        /* Image styling */
        .console-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 12px;
            border: 1px solid #00eaff;
        }

        /* Label rows */
        .info-row {
            margin: 6px 0;
            font-size: 14px;
        }

        .label-title {
            font-weight: bold;
            color: #00eaff;
        }

        .value {
            color: #eaeaea;
        }

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hidden label used for SQL filtering -->
    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>

    <asp:DataList 
        ID="DataList1" 
        runat="server"
        DataKeyField="Id" 
        DataSourceID="SqlDataSource1"
        RepeatColumns="5"
        RepeatDirection="Horizontal"
        CellPadding="10">

        <ItemTemplate>

            <div class="console-card">

                <!-- FIXED IMAGE (your old one was broken) -->
                <asp:Image 
                    ID="Image1" 
                    runat="server"
                    ImageUrl='<%# Eval("Image") %>' />

                <div class="info-row">
                    <span class="label-title">Code: </span>
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
                    <span class="value"><%# Eval("DeviceAge") %> yrs</span>
                </div>

            </div>

        </ItemTemplate>

    </asp:DataList>

    <asp:SqlDataSource 
        ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="
            SELECT [Id], [DeviceCode], [DeviceName], [DeviceType], [Price], 
                   [IfHadPreviousOwner], [Warranty], [DeviceAge], [Image]
            FROM [Gadget Table] 
            WHERE ([DeviceType] = @DeviceType)">

        <SelectParameters>
            <asp:ControlParameter 
                ControlID="Label1"
                Name="DeviceType"
                PropertyName="Text"
                Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>

</asp:Content>

