<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
/* General Styling */
body, h1, h2, h3, p {
    font-family: "Montserrat", sans-serif;
    margin: 0;
    padding: 0;
}
.container {
    padding: 20px;
    max-width: 900px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}
h1 {
    font-size: 28px;
    color: #333;
    margin-bottom: 10px;
}
h2 {
    font-size: 20px;
    color: #555;
    margin-bottom: 15px;
}
p {
    font-size: 14px;
    color: #666;
    line-height: 1.6;
    margin-bottom: 20px;
}
.img-container {
    text-align: center;
    margin: 15px 0;
}
.img-container img {
    max-width: 70%;
    height: auto;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
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
    <div style="background-color: #f3f3f3; padding: 15px 0;">
        <h1>About Us</h1>
    </div>

    <!-- Content Section -->
    <div class="container">
        <h2>Be Smart with Smart Devices</h2>
        <p>
            Welcome to our e-commerce platform! We aim to bring you innovative smart devices that enhance your daily life.
            From cutting-edge technology to reliable customer service, we're your trusted partner for all things tech.
        </p>
        <div class="img-container">
            <img src="images/aboutus2.jpg" alt="About Us Image">
        </div>
        <p>
            Our store offers a seamless shopping experience, featuring electronics, gadgets, and smart home devices
            tailored to modern needs. Shop with confidence and enjoy the best in technology!
        </p>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 E-Commerce App. All Rights Reserved.</p>
        <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
    </footer>
</form>
</body>
</html>
