<%@page import="com.dao.DAO3"%> 
<%@page import="com.entity.tv"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.*,java.io.*,java.text.*,java.util.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Products</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
/* General Styling */
body, h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat", sans-serif;
}
.container {
    padding: 20px 0;
}
.product-card {
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 15px;
    margin: 10px;
    transition: box-shadow 0.3s ease, transform 0.2s ease;
}
.product-card:hover {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    transform: scale(1.03);
}
.product-card img {
    max-width: 100%;
    height: 150px;
    object-fit: cover;
    margin-bottom: 10px;
}
.product-card a {
    text-decoration: none;
    font-weight: bold;
    color: #333;
}
.product-card a:hover {
    color: #007bff;
}
.footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
    font-size: 14px;
}
.footer a {
    color: white;
    text-decoration: none;
}
.footer a:hover {
    text-decoration: underline;
}
</style>
</head>

<body>

<%@ include file="admin_navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 20px 0;">
    <h1>Products</h1>
</div>

<!-- Products Section -->
<div class="container">
    <div class="row">
        <%
            DAO3 dao = new DAO3(DBConnect.getConn());
            List<tv> listv = dao.getAlltv();
            for(tv v : listv) {
        %>
        <!-- Product Card -->
        <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-12">
            <div class="product-card">
                <a href="selecteditema.jsp?Pn=<%=v.getPimage()%>">
                    <img src="images/<%= v.getPimage() %>" alt="<%= v.getPname() %>">
                    <p><%= v.getBname() %> <%= v.getPname() %></p>
                </a>
            </div>
        </div>
        <% } %>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <%@ include file="footer.jsp" %>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
</footer>

</body>
</html>
