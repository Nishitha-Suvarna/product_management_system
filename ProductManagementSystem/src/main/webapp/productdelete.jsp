<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
</head>
<body>
<a href="index.jsp" class="home-link">Home</a>

    <h2>Delete Product</h2>
<form action="DeleteProductServlet" method="post">
    <label for="id">Enter Product ID to delete:</label>
    <input type="number" name="id" required>
    <input type="submit" value="Delete">
</form>

</body>
</html>
