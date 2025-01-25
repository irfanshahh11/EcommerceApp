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
    padding: 20px;
    background-color: #fff;
}
.product-card {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    background-color: #f9f9f9;
    margin-bottom: 20px;
}
.product-card img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.product-details {
    flex: 1;
    padding: 20px;
}
.product-details h2 {
    margin-bottom: 10px;
    font-weight: bold;
}
.product-details h3 {
    color: #007bff;
    margin-bottom: 20px;
}
.product-details ul {
    list-style: none;
    padding: 0;
}
.product-details ul li {
    margin-bottom: 10px;
}
.edit-btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #28a745;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    margin-top: 10px;
}
.edit-btn:hover {
    background-color: #218838;
    transition: 0.3s ease-out;
}
.delete-btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #dc3545;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    margin-top: 10px;
}
.delete-btn:hover {
    background-color: #c82333;
    transition: 0.3s ease-out;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
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

<%@ include file="admin_navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 20px 0;">
    <h1>Admin - Product Details</h1>
</div>

<!-- Product Section -->
<div class="container">
    <div class="product-card">
        <%
            String st = request.getParameter("Pn");
            DAO2 dao = new DAO2(DBConnect.getConn());
            List<viewlist> list = dao.getSelecteditem(st);

            for(viewlist l : list) {
        %>
        <!-- Product Image -->
        <div class="col-lg-6">
            <img src="images/<%=l.getPimage() %>" alt="<%=l.getPname() %>">
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
            <a href="editproduct?id=<%=l.getPname() %>" class="edit-btn">Edit Product</a>
            <a href="deleteproduct?id=<%=l.getPname() %>" class="delete-btn">Delete Product</a>
        </div>
        <% } %>
    </div>

    <hr>

    <!-- Key Features Section -->
    <div class="product-details">
        <h3>Key Features</h3>
        <ul>
            <li><strong>Cutting-Edge Technology:</strong> Experience the latest advancements in electronic innovation, tailored to meet your everyday needs.</li>
            <li><strong>User-Friendly Design:</strong> A sleek, modern look combined with intuitive functionality.</li>
            <li><strong>Reliable Performance:</strong> Built to deliver consistent and powerful results for years to come.</li>
            <li><strong>Eco-Friendly:</strong> Designed with sustainability in mind to reduce environmental impact.</li>
        </ul>
    </div>

    <hr>

    <!-- Description Section -->
    <div class="product-details">
        <h3>Description</h3>
        <p>
            Take your lifestyle to the next level with this amazing product. Whether you're at work, at home, or on the go, this electronic device ensures you stay connected, productive, and entertained. With its state-of-the-art features and ergonomic design, it’s the perfect companion for anyone seeking a blend of style, performance, and reliability.
        </p>
    </div>
</div>

<!-- Footer -->
<footer>
    <%@ include file="footer.jsp" %>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
</footer>

</body>
</html>
