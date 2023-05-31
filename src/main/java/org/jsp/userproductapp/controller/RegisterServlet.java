package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		String pass = req.getParameter("ps");
		String email = req.getParameter("em");
		String gender = req.getParameter("gender");
		String name = req.getParameter("nm");
		int age = Integer.parseInt(req.getParameter("age"));
		
		User u = new User();
		u.setAge(age);
		u.setEmail(email);
		u.setGender(gender);
		u.setName(name);
		u.setPassword(pass);
		u.setPhone(phone);
		
		UserDao dao = new UserDao();
		u = dao.saveUser(u);
		
		PrintWriter pw =resp.getWriter();
		pw.write("<html><body><h2> User registered with ID:" +u.getId()+ " </h2></body></html>");
	}

}
