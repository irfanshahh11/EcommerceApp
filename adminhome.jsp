<%@page import="com.entity.viewlist"%> 
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Commerce Home</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
/* General Styling */
body, h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat", sans-serif;
    margin: 0;
    padding: 0;
}
.container {
    padding: 10px;
    background-color: #f9f9f9;
    border-radius: 8px;
    margin: 15px auto;
    max-width: 1000px;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
}
h1 {
    text-align: center;
    color: #333;
    font-size: 22px;
    margin-bottom: 8px;
}
.slideshow-container {
    max-width: 100%;
    margin: auto;
    position: relative;
    border-radius: 8px;
}
.mySlides {
    display: none;
}
.mySlides img {
    width: 100%;
    border-radius: 8px;
}
.dot {
    height: 8px;
    width: 8px;
    margin: 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
}
.active {
    background-color: #717171;
}
.scrollmenu {
    display: flex;
    overflow-x: auto;
    gap: 8px;
    padding: 10px 0;
    margin-top: 15px;
}
.scrollmenu .product-card {
    background-color: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    text-align: center;
    padding: 8px;
    flex: 0 0 auto;
    width: 180px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
.scrollmenu .product-card img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
    margin-bottom: 8px;
}
.scrollmenu .product-card a {
    text-decoration: none;
    font-size: 13px;
    color: #007bff;
    font-weight: bold;
}
.scrollmenu .product-card a:hover {
    color: #0056b3;
    text-decoration: underline;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 8px 0;
    font-size: 12px;
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
<div style="background-color: #ebe9eb; text-align: center; padding: 8px 0;">
    <h1>Welcome to E-Commerce</h1>
</div>

<!-- Slideshow -->
<div class="slideshow-container">
    <div class="mySlides">
        <img src="images/hometv.jpg" alt="TV">
    </div>
    <div class="mySlides">
        <img src="images/homelaptop.jpg" alt="Laptop">
    </div>
    <div class="mySlides">
        <img src="images/homemobile.jpg" alt="Mobile">
    </div>
    <div class="mySlides">
        <img src="images/homewatch.jpg" alt="Watch">
    </div>
</div>
<div style="text-align:center; margin-top: 8px;">
    <span class="dot"></span> 
    <span class="dot"></span> 
    <span class="dot"></span> 
    <span class="dot"></span>
</div>

<script>
let slideIndex = 0;
function showSlides() {
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1; }
    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";  
    dots[slideIndex - 1].className += " active";
    setTimeout(showSlides, 2000);
}
showSlides();
</script>

<!-- Featured Products -->
<div class="container">
    <h2 style="font-size: 18px; text-align: center;">Featured Products</h2>
    <div class="scrollmenu">
        <%
            DAO2 dao = new DAO2(DBConnect.getConn());
            List<viewlist> listv = dao.getAllviewlist();
            for (viewlist v : listv) {
        %>
        <div class="product-card">
            <a href="selecteditema.jsp?Pn=<%=v.getPimage()%>">
                <img src="images/<%= v.getPimage() %>" alt="<%= v.getPname() %>">
                <p><%= v.getBname() %> <%= v.getPname() %></p>
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
