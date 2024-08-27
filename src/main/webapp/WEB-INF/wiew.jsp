<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.example.dao.ProductDAO" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Products</title>
</head>
<body>
    <h1>Product List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <%
            ProductDAO productDAO = new ProductDAO();
            List<Product> products = productDAO.getAllProducts();
            for (Product product : products) {
        %>
        <tr>
            <td><%= product.getId() %></td>
            <td><%= product.getName() %></td>
            <td><%= product.getQuantity() %></td>
            <td><a href="edit.jsp?id=<%= product.getId() %>">Edit</a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

