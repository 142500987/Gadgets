<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCart.aspx.cs" Inherits="Gadgets.AddCart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
    
        h2 {
            margin-top: 20px;
            color: aqua;
            font-weight: 600;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: black;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }

        th {
            background: #03b2b2;
            color: white;
            padding: 14px;
            font-size: 16px;
        }

        td {
            padding: 14px;
            border-bottom: 1px solid #eee;
            font-size: 15px;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .qty-btn {
            padding: 6px 10px;
            margin: 0 5px;
            background: #03b2b2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        .qty-btn:hover {
            background: #0056b3;
        }

        .remove-btn {
            padding: 6px 10px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .remove-btn:hover {
            background: #b02a37;
        }

        #checkoutBtn {
            margin-top: 25px;
            padding: 14px 25px;
            background: #03b2b2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 17px;
        }

        #checkoutBtn:hover {
            background: aqua;
        }

        #cartTotal {
            margin-top: 20px;
            font-size: 22px;
            font-weight: bold;
        }
    
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Your Cart</h2>

    <table id="cartTable">
        <thead>
            <tr>
                <th>Item</th>
                <th>Price (R)</th>
                <th>Quantity</th>
                <th>Subtotal (R)</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>

    <h3 id="cartTotal">Total: R0</h3>

    <button id="checkoutBtn" type="button" onclick="checkout()">Checkout</button>


    <script>
        function loadCart() {
            let cart = JSON.parse(localStorage.getItem("cart")) || [];
            let tbody = document.querySelector("#cartTable tbody");
            let total = 0;

            tbody.innerHTML = "";

            cart.forEach((item, index) => {
                let subtotal = item.price * item.qty;
                total += subtotal;

                let row = `
                    <tr>
                        <td>${item.name}</td>
                        <td>R${item.price}</td>

                        <td>
                            <button class="qty-btn" onclick="changeQty(${index}, -1)">−</button>
                            ${item.qty}
                            <button class="qty-btn" onclick="changeQty(${index}, 1)">+</button>
                        </td>

                        <td>R${subtotal}</td>

                        <td>
                            <button class="remove-btn" onclick="removeItem(${index})">Remove</button>
                        </td>
                    </tr>
                `;

                tbody.innerHTML += row;
            });

            document.getElementById("cartTotal").innerText = "Total: R" + total;
        }

        // Increase or decrease quantity
        function changeQty(index, amount) {
            let cart = JSON.parse(localStorage.getItem("cart")) || [];
            cart[index].qty += amount;

            if (cart[index].qty <= 0) {
                cart.splice(index, 1); // remove item if qty is zero
            }

            localStorage.setItem("cart", JSON.stringify(cart));
            loadCart();
        }

        // Remove item completely
        function removeItem(index) {
            let cart = JSON.parse(localStorage.getItem("cart")) || [];
            cart.splice(index, 1);
            localStorage.setItem("cart", JSON.stringify(cart));
            loadCart();
        }

        // Checkout
        function checkout() {
            alert("Checkout complete! Thank you for shopping.");
            localStorage.removeItem("cart");
            loadCart();
        }

        window.onload = loadCart;
    </script>


</asp:Content>

