<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            text-align: center;
            padding-top: 50px;
        }
        h1 {
            color: #333;
        }
        .menu {
            margin-top: 30px;
        }
        .menu a {
            display: block;
            margin: 10px auto;
            width: 200px;
            padding: 12px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            font-size: 16px;
        }
        .menu a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h1>Product Management Dashboard</h1>
<div class="menu">
    <a href="productadd.jsp">➕ Adding Product</a>
    <a href="DisplayProductsServlet">📋 Displaying Products</a>
    <a href="productupdate.jsp">📝 Updating Products</a>
    <a href="productdelete.jsp">❌ Deleting Product</a>
    
    <a href="report_form.jsp">📊 Reports</a>
    
</div>

</body>
</html>
