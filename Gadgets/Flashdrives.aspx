<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" 
    CodeBehind="Flashdrives.aspx.cs" Inherits="Gadgets.Flashdrives" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body {
            background-color: #000;
            color: #f5f5f5;
            font-family: 'Poppins', sans-serif;
            overflow-x: hidden;
        }

        /* ----- CARD STYLE ----- */
        .card {
            background: rgba(255, 255, 255, 0.08);
            border-radius: 14px;
            padding: 15px;
            margin: 15px;
            width: 260px;
            text-align: center;
            backdrop-filter: blur(6px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.4);
        }

        .card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            border-radius: 10px;
            border: 1px solid #00eaff;
            margin-bottom: 12px;
        }

        .info-row {
            margin: 6px 0;
            font-size: 14px;
        }

        .label-title {
            color: #00eaff;
            font-weight: 600;
        }

        .value {
            color: #fff;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>

    <asp:DataList 
        ID="DataList1" 
        runat="server"
        DataKeyField="Id" 
        DataSourceID="SqlDataSource1"
        RepeatColumns="4"
        RepeatDirection="Horizontal"
        CellPadding="10">

        <ItemTemplate>

            <div class="card">

                <asp:ImageButton 
                    ID="ImageButton1" 
                    runat="server" 
                    ImageUrl='<%# Eval("Image") %>' 
                    CssClass="product-img" />

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
                    <span class="value"><%# Eval("Price") %></span></div>

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

                <button type="button"
                        class="btn btn-primary"
                        onclick="addToCart('<%# Eval("DeviceName") %>', '<%# Eval("Price") %>')">
                    Add to Cart
                </button>

                <br /><br />

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
            <asp:ControlParameter ControlID="Label1" Name="DeviceType" PropertyName="Text" />
        </SelectParameters>

    </asp:SqlDataSource>

<script>
    function addToCart(name, price) {
        price = parseFloat(price);

        let cart = JSON.parse(localStorage.getItem("cart")) || [];

        let item = cart.find(p => p.name === name);

        if (item) {
            item.qty++;
        } else {
            cart.push({
                name: name,
                price: price,
                qty: 1
            });
        }

        localStorage.setItem("cart", JSON.stringify(cart));
        alert(name + " added to cart!");
    }
</script>

</asp:Content>
