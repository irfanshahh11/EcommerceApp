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
      body, h1, h2, h3, h4, h5, h6 {
        font-family: "Montserrat", sans-serif;
      }
      .page-header {
        background-color: #ebe9eb;
        padding: 20px 0;
        text-align: center;
      }
      .page-header h1 {
        font-size: 36px;
        font-weight: bold;
      }
      .about-section {
        padding: 40px 20px;
        text-align: center;
        background-color: #f9f9f9;
        border-radius: 10px;
        margin: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      }
      .about-section h2 {
        font-size: 28px;
        margin-bottom: 10px;
        font-weight: bold;
      }
      .about-section p {
        font-size: 16px;
        line-height: 1.8;
        color: #555;
        margin: 20px auto;
        max-width: 800px;
      }
      .about-image {
        width: 100%;
        max-width: 1200px;
        height: auto;
        margin: 20px 0;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }
      footer {
        background-color: #343a40;
        color: white;
        text-align: center;
        padding: 20px 0;
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
    <div class="page-header">
      <h1>About Us</h1>
    </div>

    <!-- About Section -->
    <div class="about-section">
      <h2>Be Smart</h2>
      <h3><b>With Smart Devices</b></h3>
      <p>
        Welcome to our e-commerce platform! We specialize in providing top-quality smart devices that
        make your life easier and more efficient. From the latest gadgets to cutting-edge technology,
        our mission is to help you stay connected and ahead of the curve. <br><br>
        Explore a wide range of products tailored to meet your needs. Our platform is built to ensure a seamless 
        shopping experience, offering convenience, reliability, and innovation at your fingertips.
      </p>
      <img src="images/aboutus2.jpg" alt="About Us" class="about-image">
    </div>

    <!-- Footer -->
    <footer>
      <%@ include file="footer.jsp" %>
      <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    </footer>
  </body>
</html>
