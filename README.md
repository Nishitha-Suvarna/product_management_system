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
│   └── web.xml

```
## 🗄 Database Setup

### 1. Create Database
sql
CREATE DATABASE IF NOT EXISTS product_db;
USE product_db;



### 2. Create Table
sql
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2),
  quantity INT,
);



### 3. Insert Sample Data
sql
INSERT INTO products VALUES 
(1, 'Mobile Phone', 'Electronics', 15000.00, 50 ),
(2, 'Laptop', 'Electronics', 55000.00, 30 ),
(3, 'Chair', 'Furniture', 2500.00, 80);



## ⚙ Installation & Setup

### Step 1: Clone/Download the Project
Download all the project files and organize them according to the project structure above.

### Step 2: Database Configuration
1. Start your MySQL server
2. Run the database setup scripts provided above
3. Update database credentials in ProductDAO.java:
   java
   Connection conn = DriverManager.getConnection(
  "jdbc:mysql://localhost:3306/product_db",
  "root",
  "your_password"
);

   

### Step 3: Add MySQL JDBC Driver
1. Download MySQL Connector/J from the official MySQL website
2. Add the JAR file to your project's WEB-INF/lib directory
3. If using an IDE, add it to your build path

### Step 4: Deploy to Tomcat
1. Create a new Dynamic Web Project in your IDE
2. Copy all source files to the appropriate folders
3. Deploy the project to Tomcat server
4. Start the Tomcat server

### 🖼️ Screenshots
### 🏠 Home Page
<img src="https://github.com/Nishitha-Suvarna/product_management_system/blob/main/ProductManagementSystem/Screenshots/Dashboard.png" alt="Dashboard" width="700"/>

### ➕ Add Product
<img src="https://github.com/Nishitha-Suvarna/product_management_system/blob/main/ProductManagementSystem/Screenshots/Addingproduct.png" alt="Add Product" width="700"/>

### ❌ Delete Product
<img src="Screenshots/deleteproduct.png" alt="Delete Product" width="700"/>

### 🆕 Update Product
<img src="Screenshots/updateproduct.png" alt="Update Product" width="700"/>

### 📋 Display Products
<img src="Screenshots/displayproduct.png" alt="Display Products" width="700"/>

### 📊 Report Result
<img src="Screenshots/reportresult.png" alt="Report Result" width="700"/>






