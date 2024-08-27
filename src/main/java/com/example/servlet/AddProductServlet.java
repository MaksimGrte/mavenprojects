package com.example.servlet;

import com.example.dao.ProductDAO;
import com.example.model.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = new Product();
        product.setName(name);
        product.setQuantity(quantity);
        ProductDAO productDAO = new ProductDAO();
        productDAO.addProduct(product);
        response.sendRedirect("view.jsp");
    }
}
