# 📦 Product Management System

**Subject:** Advanced Java  
**Subject Code:** BCS613D  
**Name:** Nishitha Suvarna  
**USN:** 4AL22CS095 
**Semester/Section:** VI / B

---

## 🚀 Features

- ✅ Add, Update, Delete, and Display products  
- 🔍 Filter products by category and price  
- 📊 Generate reports:
  - Products with price above specified value
  - Products in a given category
  - Top N products by sales or quantity  
- 💾 JDBC and MySQL integration  
- 🧱 MVC Architecture  
- 🎨 User-friendly web interface using JSP and Bootstrap

---

## 🛠️ Project Structure

```plaintext
ProductWebApp/
├── WebContent/
│   ├── index.jsp
│   ├── productadd.jsp
│   ├── productupdate.jsp
│   ├── productdelete.jsp
│   ├── productdisplay.jsp
│   ├── reports.jsp
│   ├── report_form.jsp
│   └── report_result.jsp
├── src/
│   └── com/
│       ├── dao/
│       │   └── ProductDAO.java
│       ├── model/
│       │   └── Product.java
│       └── servlet/
│           ├── AddProductServlet.java
│           ├── UpdateProductServlet.java
│           ├── DeleteProductServlet.java
│           ├── DisplayProductsServlet.java
│           ├── ReportServlet.java
│           └── ReportCriteriaServlet.java
├── WEB-INF/
│   └── web.xml```

---- plaintext

## 🧰 Prerequisites

- Java JDK 8 or above  
- Apache Tomcat 9+  
- MySQL / XAMPP  
- MySQL JDBC Driver  
- Eclipse or IntelliJ IDE  
- Web browser  

---

##  🗄 Database Setup

### 1. Create Database

```sql
CREATE DATABASE IF NOT EXISTS product_db;
USE product_db;

## 🗄 Database Setup

### 2. Create Table

```sql
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2),
  quantity INT,
  sales INT
);

### 3. Insert Sample Data
```sql
Copy
Edit
INSERT INTO products VALUES 
(1, 'Mobile Phone', 'Electronics', 15000.00, 50, 200),
(2, 'Laptop', 'Electronics', 55000.00, 30, 100),
(3, 'Chair', 'Furniture', 2500.00, 80, 60);
