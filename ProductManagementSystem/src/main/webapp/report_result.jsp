<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Report Result</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
</head>
<body>
<a href="index.jsp" class="home-link">Home</a>

    <h2>Report Results</h2>

    <c:choose>
        <c:when test="${empty products}">
            <p>No products found for the selected criteria.</p>
        </c:when>
        <c:otherwise>
            <table border="1">
                <tr>
                    <th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Quantity</th>
                </tr>
                <c:forEach var="product" items="${products}">
                    <tr>
                    <td>${product.productID}</td>
                        <td>${product.productName}</td>
                        <td>${product.category}</td>
                        <td>${product.price}</td>
                        <td>${product.quantity}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</body>
</html>
