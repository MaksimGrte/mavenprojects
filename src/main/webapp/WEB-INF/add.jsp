<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
    <h1>Add New Product</h1>
    <form action="AddProductServlet" method="post">
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="quantity">Quantity:</label>
        <input type="text" id="quantity" name="quantity"><br><br>
        <input type="submit" value="Add Product">
    </form>
</body>
</html>
