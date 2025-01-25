<%@page import="com.conn.DBConnect"%> 
<%@page import="com.entity.viewlist"%>
<%@page import="com.dao.DAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin - Product Details</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
/* General Styling */
body, h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat", sans-serif;
}
.container {
    padding: 15px;
    background-color: #fff;
    margin: 20px auto;
    max-width: 900px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}
.product-card {
    display: flex;
    gap: 15px;
    flex-wrap: wrap;
    margin-bottom: 20px;
    align-items: center;
}
.product-card img {
    max-width: 100%;
    max-height: 300px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    flex: 1;
}
.product-details {
    flex: 2;
    padding: 10px;
}
.product-details h2, h3 {
    margin-bottom: 10px;
}
.product-details ul {
    list-style: none;
    padding: 0;
    margin: 0;
}
.product-details ul li {
    margin-bottom: 8px;
}
.action-buttons a {
    display: inline-block;
    padding: 8px 15px;
    margin-right: 10px;
    text-decoration: none;
    color: white;
    border-radius: 5px;
    font-weight: bold;
    font-size: 14px;
}
.edit-btn {
    background-color: #28a745;
}
.edit-btn:hover {
    background-color: #218838;
}
.delete-btn {
    background-color: #dc3545;
}
.delete-btn:hover {
    background-color: #c82333;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
    font-size: 14px;
    margin-top: 20px;
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

<%@ include file="admin_navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 15px 0;">
    <h1>Admin - Product Details</h1>
</div>

<!-- Product Section -->
<div class="container">
    <%
        String st = request.getParameter("Pn");
        DAO2 dao = new DAO2(DBConnect.getConn());
        List<viewlist> list = dao.getSelecteditem(st);

        for(viewlist l : list) {
    %>
    <div class="product-card">
        <!-- Product Image -->
        <img src="images/<%=l.getPimage() %>" alt="<%=l.getPname() %>">

        <!-- Product Details -->
        <div class="product-details">
            <h2><%= l.getPname() %></h2>
            <h3>RM <%= l.getPprice() %></h3>
            <ul>
                <li><strong>Brand:</strong> <%= l.getBname() %></li>
                <li><strong>Category:</strong> <%= l.getCname() %></li>
                <li><strong>Quantity Available:</strong> <%= l.getPquantity() %></li>
            </ul>
            <div class="action-buttons">
                <a href="editproduct?id=<%=l.getPname() %>" class="edit-btn">Edit Product</a>
                <a href="deleteproduct?id=<%=l.getPname() %>" class="delete-btn">Delete Product</a>
            </div>
        </div>
    </div>
    <% } %>

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
            This product offers state-of-the-art features and ergonomic design, perfect for anyone seeking a blend of style, performance, and reliability.
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
