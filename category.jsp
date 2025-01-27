<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Category</title>
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
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.category-card {
    text-align: center;
    padding: 15px;
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 15px;
    transition: transform 0.3s ease-in-out;
}
.category-card:hover {
    transform: scale(1.05);
}
.category-card img {
    width: 120px; /* Ensures all images are the same size */
    height: 120px;
    border-radius: 5px;
    margin-bottom: 10px;
}
.category-card a {
    text-decoration: none;
    font-size: 16px;
    color: #007bff;
    font-weight: bold;
}
.category-card a:hover {
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
<%@ include file="navbar.jsp"%>

<!-- Page Header -->
<div style="background-color: #ebe9eb; text-align: center; padding: 15px 0;">
    <h1>Product Category</h1>
</div>

<!-- Category Section -->
<div class="container">
    <div class="row">
        <!-- TV Category -->
        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
            <div class="category-card">
                <a href="tv.jsp">
                    <img src="images/tv.png" alt="TV">
                </a>
                <a href="tv.jsp">TV</a>
            </div>
        </div>

        <!-- Laptop Category -->
        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
            <div class="category-card">
                <a href="laptop.jsp">
                    <img src="images/laptop.png" alt="Laptop">
                </a>
                <a href="laptop.jsp">Laptop</a>
            </div>
        </div>

        <!-- Mobile Category -->
        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
            <div class="category-card">
                <a href="mobile.jsp">
                    <img src="images/mobile.png" alt="Mobile">
                </a>
                <a href="mobile.jsp">Mobile</a>
            </div>
        </div>

        <!-- Watch Category -->
        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
            <div class="category-card">
                <a href="watch.jsp">
                    <img src="images/watch.png" alt="Watch">
                </a>
                <a href="watch.jsp">Watch</a>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
