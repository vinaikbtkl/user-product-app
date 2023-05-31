package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		String pass = req.getParameter("ps");
		UserDao dao = new UserDao();
		User u = dao.verifyUser(phone, pass);
		RequestDispatcher rd = null;
		PrintWriter pw = resp.getWriter();
		if(u!=null) {
			HttpSession hs = req.getSession();
			hs.setAttribute("user", u);
			rd = req.getRequestDispatcher("home.jsp");
			rd.forward(req, resp);
		}
		else {
			pw.write("<html><head><style>h2{color:red;}</style></head><body><center><h2> Invalid Phone number or password "
					+ "</h2></center></body></html>");
			rd = req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
		}
	}

}
