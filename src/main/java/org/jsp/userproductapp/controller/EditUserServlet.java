package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/editUser")
public class EditUserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		long phone = Long.parseLong(req.getParameter("ph"));
		int age = Integer.parseInt(req.getParameter("age"));
		String password = req.getParameter("ps");
		String email = req.getParameter("em");
		String name = req.getParameter("nm");
		String gender = req.getParameter("gender");
		
		User u = new User();
		u.setId(id);
		u.setAge(age);
		u.setEmail(email);
		u.setGender(gender);
		u.setName(name);
		u.setPassword(password);
		u.setPhone(phone);
		
		UserDao dao = new UserDao();
		dao.updateUser(u);
		
		HttpSession hs = req.getSession();
		hs.setAttribute("user", u);
		
		PrintWriter pw =resp.getWriter();
		pw.write("<html><body><h2> User updated with ID: " +u.getId()+ " </h2></body></html>");
	}

}
