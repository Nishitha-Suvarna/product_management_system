<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
</head>
<body>
<a href="index.jsp" class="home-link">Home</a>

    <h2>Add New Product</h2>
    <form action="AddProductServlet" method="post">
        <label>Product Name:</label>
        <input type="text" name="productName" required><br><br>

        <label>Category:</label>
        <input type="text" name="category" required><br><br>

        <label>Price:</label>
        <input type="number" step="0.01" name="price" required><br><br>

        <label>Quantity:</label>
        <input type="number" name="quantity" required><br><br>

        <input type="submit" value="Add Product">
    </form>
</body>
</html>