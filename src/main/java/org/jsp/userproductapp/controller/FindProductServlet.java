package org.jsp.userproductapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsp.userproductapp.dao.ProductDao;
import org.jsp.userproductapp.dto.Product;

@WebServlet("/find")
public class FindProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pid = Integer.parseInt(req.getParameter("pid"));
		ProductDao dao = new ProductDao();
		Product p = dao.findProductById(pid);
		if (p != null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("editProducts.jsp");
			req.setAttribute("product", p);
			dispatcher.forward(req, resp);
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}
