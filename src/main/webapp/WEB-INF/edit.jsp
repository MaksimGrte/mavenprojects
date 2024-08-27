<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.dao.ProductDAO" %>
<%@ page import="com.example.model.Product" %>
<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ProductDAO productDAO = new ProductDAO();
    Product product = productDAO.getProductById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
    <h1>Edit Producct</h1>
    <form action="EditProductServlet" method="post">
        <input type="hidden" name="id" value="<%= product.getId() %>">
        <label for="name">Product Name: </label>
        <input type="text" id="name" name="name" value="<%= product.getName() %>"><br><br>
        <label for="quantity">Quantity:</label>
        <input type="text" id="quantity" name="quantity" value="<%= product.getQuantity() %>"><br><br>
        <input type="submit" value="Update Product">
        
    </form>
</body>
</html>

