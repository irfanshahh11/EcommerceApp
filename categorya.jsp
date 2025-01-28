<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Categories</title>
<link rel="stylesheet" href="images/bootstrap.css">
<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
  /* General Styles */
  body, h1, h2, h3, h4, h5, h6, .w3-wide {
    font-family: "Montserrat", sans-serif;
  }
  .category-container {
    background-color: #f9f9f9;
    padding: 20px 0;
    height: auto;
    margin-bottom: 100vh;
    margin-top: 20px;
    border-radius: 10px;
  }
  .category-card {
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 15px;
    text-align: center;
    transition: box-shadow 0.3s ease;
  }
  .category-card:hover {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  }
  .category-card img {
    max-height: 180px;
    margin-bottom: 10px;
  }
  .category-card a {
    text-decoration: none;
    font-weight: bold;
    color: #333;
  }
  .category-card a:hover {
    color: #007bff;
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
  <h1>Product Categories</h1>
</div>

<!-- Product Categories -->
<div class="container category-container">
  <div class="row justify-content-center g-4">
    
    <!-- TV Category -->
    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-12">
      <div class="category-card">
        <a href="tva.jsp">
          <img src="images/tv.png" alt="TV">
          <p>TV</p>
        </a>
      </div>
    </div>
    
    <!-- Laptop Category -->
    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-12">
      <div class="category-card">
        <a href="laptopa.jsp">
          <img src="images/laptop.png" alt="Laptop">
          <p>Laptop</p>
        </a>
      </div>
    </div>
    
    <!-- Mobile Category -->
    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-12">
      <div class="category-card">
        <a href="mobilea.jsp">
          <img src="images/mobile.png" alt="Mobile">
          <p>Mobile</p>
        </a>
      </div>
    </div>
    
    <!-- Watch Category -->
    <div class="col-xxl-3 col-xl-4 col-lg-4 col-md-6 col-sm-12">
      <div class="category-card">
        <a href="watcha.jsp">
          <img src="images/watch.png" alt="Watch">
          <p>Watch</p>
        </a>
      </div>
    </div>

  </div>
</div>

<!-- Footer -->
<footer>
  <p>© 2024 E-Commerce App. All Rights Reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
</footer>

</body>
</html>
