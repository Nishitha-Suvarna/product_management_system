package com.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.ProductDAO;
import com.model.Product;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String reportType = request.getParameter("reportType");
        String value = request.getParameter("value");

        ProductDAO dao = new ProductDAO();
        List<Product> products = null;

        try {
            if ("price".equals(reportType)) {
                if (value != null && !value.isEmpty()) {
                    double price = Double.parseDouble(value);
                    products = dao.getProductsByPrice(price);
                }
            } else if ("category".equals(reportType)) {
                if (value != null && !value.isEmpty()) {
                    products = dao.getProductsByCategory(value);
                }
            } else if ("top".equals(reportType)) {
                if (value != null && !value.isEmpty()) {
                    int n = Integer.parseInt(value);
                    products = dao.getTopNProducts(n);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("products", products);
        request.getRequestDispatcher("report_result.jsp").forward(request, response);
    }
}