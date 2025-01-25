<%@page import="com.entity.customer"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Customers</title>
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
    margin: 20px auto;
    max-width: 1000px;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
h1 {
    text-align: center;
    color: #333;
}
h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #555;
}
.table-responsive {
    overflow-x: auto;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}
thead {
    background-color: #ebe9eb;
}
th, td {
    border: 1px solid #ddd;
    text-align: center;
    padding: 10px;
}
th {
    font-weight: bold;
    color: #333;
}
td a {
    color: #007bff;
    text-decoration: none;
}
td a:hover {
    text-decoration: underline;
}
td img {
    cursor: pointer;
}
footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 10px 0;
    margin-top: 20px;
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
<form action="" method="post">

    <%@ include file="admin_navbar.jsp" %>

    <!-- Page Header -->
    <div style="background-color: #ebe9eb; padding: 20px 0;">
        <h1>Manage Customers</h1>
    </div>

    <!-- Customer Management Table -->
    <div class="container">
        <h2>All Customers Details</h2>
        <div class="table-responsive">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Password</th>
                        <th>Email ID</th>
                        <th>Contact No</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DAO dao = new DAO(DBConnect.getConn());
                        List<customer> list = dao.getAllCustomer();
                        for (customer c : list) {
                    %>
                    <tr>
                        <td><%= c.getName() %></td>
                        <td><%= c.getPassword() %></td>
                        <td><%= c.getEmail_Id() %></td>
                        <td><%= c.getContact_No() %></td>
                        <td>
                            <a href="carta.jsp?custname=<%= c.getName() %>">View Cart</a> |
                            <a href="deletecustomer?Name=<%= c.getName() %>&Email_Id=<%= c.getEmail_Id() %>">
                                <img src="images/delete.jpg" alt="Remove" height="25px">
                            </a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2024 E-Commerce App. All Rights Reserved.</p>
        <a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Service</a>
    </footer>

</form>
</body>
</html>
