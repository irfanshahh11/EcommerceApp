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
html, body {
    height: 100%;
    display: flex;
    flex-direction: column;
}
.container {
    padding: 20px 0;
    background-color: #fff;
    flex: 1;
}
.product-image {
    max-width: 100%;
    height: auto;
    border: 1px solid #ddd;
    border-radius: 10px;
    margin-bottom: 20px;
}
.product-details {
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 10px;
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
    font-size: 16px;
}
.add-to-cart {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    margin-top: 20px;
}
.add-to-cart:hover {
    background-color: #0056b3;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
    font-size: 14px;
    margin-top: auto;
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

<%@ include file="navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 20px 0;">
    <h1>Product Details</h1>
</div>

<!-- Product Section -->
<div class="container">
    <div class="row">
        <%
            String st = request.getParameter("Pn");
            DAO2 dao = new DAO2(DBConnect.getConn());
            List<viewlist> list = dao.getSelecteditem(st);

            for(viewlist l : list) {
        %>
        <!-- Product Image -->
        <div class="col-lg-6 col-md-12">
            <img src="images/<%=l.getPimage() %>" alt="<%=l.getPname() %>" class="product-image">
        </div>

        <!-- Product Details -->
        <div class="col-lg-6 col-md-12 product-details">
            <h2><%= l.getPname() %></h2>
            <h3>RM <%= l.getPprice() %></h3>
            <ul>
                <li><strong>Brand:</strong> <%= l.getBname() %></li>
                <li><strong>Category:</strong> <%= l.getCname() %></li>
                <li><strong>Quantity Available:</strong> <%= l.getPquantity() %></li>
            </ul>
            <a href="addtocartnull?id=<%=l.getBname()%>&ie=<%=l.getCname()%>&ig=<%=l.getPname() %>&ih=<%=l.getPprice()%>&ii=<%=l.getPquantity()%>&ij=<%=l.getPimage()%>" class="add-to-cart">Add to Cart</a>
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

    <!-- <hr> -->

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
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
