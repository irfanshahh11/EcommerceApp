<%@page import="com.entity.category"%>
<%@page import="com.entity.brand"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add New Product</title>
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
    margin: 20px auto;
    max-width: 600px;
    background-color: #f9f9f9;
    border-radius: 8px;
    padding: 15px;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
    font-size: 14px;
}
h1 {
    text-align: center;
    font-size: 20px;
    margin-bottom: 10px;
    color: #333;
}
form h4 {
    margin-bottom: 5px;
    color: #555;
    font-size: 14px;
}
select, input[type="text"], input[type="number"], input[type="file"] {
    width: 100%;
    padding: 6px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
}
input[type="file"] {
    padding: 4px;
}
input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 8px 16px;
    font-size: 14px;
    border-radius: 4px;
    cursor: pointer;
    display: block;
    margin: 10px auto;
    width: 100%;
}
input[type="submit"]:hover {
    background-color: #0056b3;
    transition: 0.3s ease;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 8px 0;
    margin-top: 20px;
    font-size: 12px;
}
footer a {
    color: white;
    text-decoration: none;
    font-size: 12px;
}
footer a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<%@ include file="admin_navbar.jsp" %>

<div style="background-color: #ebe9eb; padding: 10px 0;">
    <h1>Add New Product</h1>
</div>

<div class="container">
    <form method="post" action="addproduct" enctype="multipart/form-data">
        <!-- Select Brand -->
        <h4>Select Brand:</h4>
        <select name="bname" required>
            <%
                DAO dao = new DAO(DBConnect.getConn());
                List<brand> listb = dao.getAllbrand();
                for (brand b : listb) {
            %>
                <option><%= b.getBname() %></option>
            <% } %>
        </select>

        <!-- Select Category -->
        <h4>Select Category:</h4>
        <select name="cname" required>
            <%
                List<category> listc = dao.getAllcategory();
                for (category c : listc) {
            %>
                <option><%= c.getCname() %></option>
            <% } %>
        </select>

        <!-- Product Name -->
        <h4>Product Name:</h4>
        <input type="text" name="pname" required>

        <!-- Product Price -->
        <h4>Product Price (RM):</h4>
        <input type="number" name="pprice" required>

        <!-- Quantity -->
        <h4>Quantity:</h4>
        <input type="number" value="1" name="pquantity" readonly>

        <!-- Product Image -->
        <h4>Product Image:</h4>
        <input type="file" name="pimage" required>

        <!-- Submit Button -->
        <input type="submit" value="Add Product">
    </form>
</div>

<!-- Footer -->
<footer>
    <p>© 2024 E-Commerce App. All Rights Reserved.</p>
    <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
</footer>

</body>
</html>
