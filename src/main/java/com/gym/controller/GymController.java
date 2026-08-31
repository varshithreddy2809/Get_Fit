package com.gym.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gym.dao.GymDAO;
import com.gym.model.GymObject;

@WebServlet("/GymController")
public class GymController extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String plan = request.getParameter("plan");
		String password = request.getParameter("password");

		GymObject go = new GymObject();
		go.setUsername(username);
		go.setFirstname(firstname);
		go.setLastname(lastname);
		go.setEmail(email);
		go.setPhone(phone);
		go.setAge(age);
		go.setGender(gender);
		go.setPlan(plan);
		go.setPassword(password);

		GymDAO gda = new GymDAO();
		String Status = gda.insertMember(go);
		if (Status.equals("Success")) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}

	}
}
