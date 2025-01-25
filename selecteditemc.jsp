<%@page import="com.entity.viewlist"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Details</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
body, h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat", sans-serif;
    margin: 0;
    padding: 0;
}
.container {
    max-width: 900px;
    margin: 20px auto;
    padding: 15px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}
.product-section {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
    margin-bottom: 20px;
}
.product-image {
    flex: 1;
    max-width: 40%;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
.product-details {
    flex: 2;
    padding: 10px;
}
.product-details h2 {
    font-weight: bold;
    margin-bottom: 10px;
}
.product-details h3 {
    color: #007bff;
    margin-bottom: 15px;
}
.product-details ul {
    list-style: none;
    padding: 0;
    font-size: 14px;
}
.product-details ul li {
    margin-bottom: 8px;
}
.add-to-cart-btn {
    display: inline-block;
    padding: 10px 15px;
    background-color: #28a745;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}
.add-to-cart-btn:hover {
    background-color: #218838;
    transition: 0.3s ease-out;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
    margin-top: 20px;
    font-size: 14px;
}
footer a {
    color: white;
    text-decoration: none;
}
footer a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<%@ include file="customer_navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 10px 0;">
    <h1>Product Details</h1>
</div>

<!-- Product Section -->
<div class="container">
    <%
        String st = request.getParameter("Pn");
        DAO2 dao = new DAO2(DBConnect.getConn());
        List<viewlist> list = dao.getSelecteditem(st);

        for(viewlist l : list) {
    %>
    <div class="product-section">
        <!-- Product Image -->
        <div>
            <img src="images/<%= l.getPimage() %>" alt="<%= l.getPname() %>" class="product-image">
        </div>

        <!-- Product Details -->
        <div class="product-details">
            <h2><%= l.getPname() %></h2>
            <h3>RM <%= l.getPprice() %></h3>
            <ul>
                <li><strong>Brand:</strong> <%= l.getBname() %></li>
                <li><strong>Category:</strong> <%= l.getCname() %></li>
                <li><strong>Quantity Available:</strong> <%= l.getPquantity() %></li>
            </ul>
            <a href="addtocart?id=<%= l.getBname() %>&ie=<%= l.getCname() %>&ig=<%= l.getPname() %>&ih=<%= l.getPprice() %>&ii=<%= l.getPquantity() %>&ij=<%= l.getPimage() %>" class="add-to-cart-btn">Add to Cart</a>
        </div>
    </div>
    <% } %>

    <hr>

    <!-- Key Features Section -->
    <div class="product-details">
        <h3>Key Features</h3>
        <ul>
            <li><strong>Cutting-Edge Technology:</strong> Experience the latest advancements in electronic innovation.</li>
            <li><strong>User-Friendly Design:</strong> A sleek, modern look combined with intuitive functionality.</li>
            <li><strong>Reliable Performance:</strong> Built to deliver consistent and powerful results.</li>
            <li><strong>Eco-Friendly:</strong> Designed to reduce environmental impact.</li>
        </ul>
    </div>

    <!-- <hr> -->

    <!-- Description Section -->
    <div class="product-details">
        <h3>Description</h3>
        <p>
            This product takes your lifestyle to the next level, ensuring you stay connected and productive wherever you go.
        </p>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
