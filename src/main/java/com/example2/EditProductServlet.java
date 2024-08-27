package com.example.servlet;

import com.example.dao.ProductDAO;
import com.example.model.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class EditProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = new Product();
        product.setId(id);
        product.setName(name);
        product.setQuantity(quantity);
        ProductDAO productDAO = new ProductDAO();
        productDAO.updateProduct(product);
        response.sendRedirect("view.jsp");
    }
}
