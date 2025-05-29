<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Product Reports</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
</head>
<body>
<a href="index.jsp" class="home-link">Home</a>

    <h2>Generate Report</h2>
    <form action="ReportServlet" method="post">
        <label>Select Report Type:</label><br>
        <input type="radio" name="reportType" value="price" required> Products with price greater than<br>
        <input type="radio" name="reportType" value="category"> Products in specific category<br>
        <input type="radio" name="reportType" value="top"> Top N products by quantity<br><br>

        <label>Enter Value:</label>
        <input type="text" name="value" required><br><br>

        <input type="submit" value="Generate Report">
    </form>
</body>
</html>
