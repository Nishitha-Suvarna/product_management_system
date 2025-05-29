package com.servlet;

import com.dao.ProductDAO;
import com.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/DisplayProductsServlet")
public class DisplayProductsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        List<Product> productList = dao.getAllProducts();

        request.setAttribute("products", productList);
        request.getRequestDispatcher("productdisplay.jsp").forward(request, response);
    }
}

