<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
</head>
<body>
<a href="index.jsp" class="home-link">Home</a>

    <h2>Update Product</h2>
    <form action="UpdateProductServlet" method="post">
        <label>Product ID:</label>
        <input type="number" name="id" required><br><br>

        <label>Product Name:</label>
        <input type="text" name="productName" required><br><br>

        <label>Category:</label>
        <input type="text" name="category" required><br><br>

        <label>Price:</label>
        <input type="number" name="price" step="0.01" required><br><br>

        <label>Quantity:</label>
        <input type="number" name="quantity" required><br><br>

        <input type="submit" value="Update Product">
    </form>
</body>
</html>
