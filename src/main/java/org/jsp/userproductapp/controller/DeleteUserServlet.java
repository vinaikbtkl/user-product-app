package org.jsp.userproductapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		User u = (User)hs.getAttribute("user");
		if(u != null) {
			int id = u.getId();
			UserDao dao = new UserDao();
			dao.deleteUser(id);
			hs.invalidate();
			req.setAttribute("msg", "Your account is deleted");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		else 
		  {
			resp.sendRedirect("login.jsp");
		}
	}
}
