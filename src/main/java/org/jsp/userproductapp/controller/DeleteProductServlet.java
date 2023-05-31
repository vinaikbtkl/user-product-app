package org.jsp.userproductapp.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.ProductDao;
import org.jsp.userproductapp.dto.Product;
import org.jsp.userproductapp.dto.User;

@WebServlet("/deleteProd")
public class DeleteProductServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User u = (User) req.getSession().getAttribute("user");
		if (u != null) {
			int pid = Integer.parseInt(req.getParameter("pid"));
			ProductDao dao = new ProductDao();
			System.out.println(pid);
			dao.deleteProduct(pid);
			RequestDispatcher dispatcher = req.getRequestDispatcher("viewProd");
			dispatcher.forward(req, resp);
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}