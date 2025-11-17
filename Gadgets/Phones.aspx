<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Phones.aspx.cs" Inherits="Gadgets.Phones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>

        body {
            background-color: #000; 
            color: #fff;
            font-family: 'Poppins', sans-serif;
        }

        /* Card container */
        .card {
            width: 280px;
            background: #111;
            border-radius: 14px;
            padding: 15px;
            margin: 15px;
            text-align: center;
            border: 1px solid rgba(0, 255, 255, 0.25);
            box-shadow: 0 0 18px rgba(0, 255, 255, 0.15);
            transition: 0.3s ease;
        }

        /* Hover effect */
        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 0 25px rgba(0, 255, 255, 0.35);
        }

        /* Phone image */
        .card img {
            width: 100%;
            height: 260px;
            border-radius: 10px;
            border: 1px solid #00eaff;
            object-fit: cover;
            margin-bottom: 12px;
        }

        /* Info lines */
        .info-row {
            margin: 5px 0;
            font-size: 14px;
        }

        .label-title {
            font-weight: 600;
            color: #00eaff;
        }

        .value {
            color: #f2f2f2;
        }

    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hidden label that holds the phone type -->
    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>


    <asp:DataList
        ID="DataList1"
        runat="server"
        DataKeyField="Id"
        DataSourceID="SqlDataSource1"
        RepeatColumns="3"
        RepeatDirection="Horizontal"
        CellPadding="10">

        <ItemTemplate>

            <div class="card">

                <asp:ImageButton 
                    ID="ImageButton1" 
                    runat="server" 
                    ImageUrl='<%# Eval("Image") %>'
                />

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
                        class="btn btn-info"
                        onclick="addToCart('<%# Eval("DeviceName") %>', '<%# Eval("Price") %>')">
                    <strong>Add to Cart</strong>
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
