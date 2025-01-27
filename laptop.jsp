<%@page import="com.entity.laptop"%>
<%@page import="com.dao.DAO3"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Page</title>
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
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
}
h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}
.product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
}
.product-card {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    text-align: center;
    padding: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease;
}
.product-card:hover {
    transform: translateY(-5px);
}
.product-card img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
    margin-bottom: 10px;
}
.product-card a {
    text-decoration: none;
    font-weight: bold;
    color: #007bff;
}
.product-card a:hover {
    color: #0056b3;
    text-decoration: underline;
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
<%@ include file="navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 20px 0;">
    <h1>Products</h1>
</div>

<!-- Product Section -->
<div class="container">
    <div class="product-grid">
        <%
            DAO3 dao = new DAO3(DBConnect.getConn());
            List<laptop> listv = dao.getAlllaptop();
            for (laptop v : listv) {
        %>
        <div class="product-card">
            <a href="selecteditem.jsp?Pn=<%=v.getPimage()%>">
                <img src="images/<%=v.getPimage()%>" alt="<%=v.getPname()%>">
                <p><%=v.getBname()%> <%=v.getPname()%></p>
            </a>
        </div>
        <% } %>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
