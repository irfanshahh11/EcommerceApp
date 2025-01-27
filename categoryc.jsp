<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Categories</title>
    <link rel="stylesheet" href="images/bootstrap.css">
    <link rel="stylesheet" href="Css/w3.css">
    <link rel="stylesheet" href="Css/font.css">
    <link rel="stylesheet" href="Css/whitespace.css">

    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Montserrat", sans-serif;
        }

        .container {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .category-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 10px;
        }

        .category-card img {
            width: 100%;
            height: auto;
            max-height: 150px;
            object-fit: contain;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .category-card img:hover {
            transform: scale(1.05);
        }

        .category-card h3 {
            text-align: center;
            margin-top: 10px;
        }

        .category-card a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            text-align: center;
        }

        .category-card a:hover {
            color: #0056b3;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .col-md-3 {
            padding: 15px;
        }

        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 14px;
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .category-card img {
                max-height: 120px;
            }
        }

    </style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<div style="background-color: #ebe9eb; padding: 30px 0;">
    <h1>Product Categories</h1>
</div>

<div class="container">
    <div class="row">
        <!-- TV Category -->
        <div class="col-md-3 col-sm-6">
            <div class="category-card">
                <a href="tvc.jsp">
                    <img src="images/tv.png" alt="TV">
                    <h3>TV</h3>
                </a>
            </div>
        </div>

        <!-- Laptop Category -->
        <div class="col-md-3 col-sm-6">
            <div class="category-card">
                <a href="laptopc.jsp">
                    <img src="images/laptop.png" alt="Laptop">
                    <h3>Laptop</h3>
                </a>
            </div>
        </div>

        <!-- Mobile Category -->
        <div class="col-md-3 col-sm-6">
            <div class="category-card">
                <a href="mobilec.jsp">
                    <img src="images/mobile.png" alt="Mobile">
                    <h3>Mobile</h3>
                </a>
            </div>
        </div>

        <!-- Watch Category -->
        <div class="col-md-3 col-sm-6">
            <div class="category-card">
                <a href="watchc.jsp">
                    <img src="images/watch.png" alt="Watch">
                    <h3>Watch</h3>
                </a>
            </div>
        </div>
    </div>
</div>

<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
