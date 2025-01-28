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
body, h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat", sans-serif;
}
.container {
    padding: 20px;
}
.product-card {
    border: 1px solid #ddd;
    border-radius: 15px;
    background-color: #fff;
    text-align: center;
    padding: 15px;
    margin-bottom: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    height: 400px;
    display: flex;
    flex-direction: column;
}

.product-card:hover {
    transform: translateY(-5px);
    transition: transform 0.3s ease;
}

.product-card img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin-bottom: 10px;
}
.product-card h5 {
    font-size: 22px;
    font-weight: bold;
    color: #333;
    margin-bottom: 8px;
    margin-top: auto;
}
.product-card a {
    text-decoration: none;
    font-size: 14px;
    color: #007bff;
}
.product-card a:hover {
    color: #0056b3;
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
<form action="" method="post">
<%@ include file="navbar.jsp" %>

<!-- Page Header -->
<div style="background-color: #ebe9eb; padding: 15px 0;">
    <h1 style="text-align: center;">Products</h1>
</div>

<!-- Products Section -->
<div class="container">
    <div class="row">
        <%
            DAO3 dao = new DAO3(DBConnect.getConn());
            List<tv> listv = dao.getAlltv();
            for(tv v : listv) {
        %>
        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12">
            <div class="product-card">
                <a href="selecteditem.jsp?Pn=<%=v.getPimage()%>">
                    <img src="images/<%= v.getPimage() %>" alt="<%= v.getPname() %>">
                </a>
                <h5><%= v.getBname() %> <%= v.getPname() %></h5>
                <a href="selecteditem.jsp?Pn=<%=v.getPimage()%>">View Details</a>
            </div>
        </div>
        <% } %>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <
