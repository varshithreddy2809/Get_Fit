package com.gym.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.gym.dao.GymDAO;
import com.gym.model.LoginModel;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginModel lm = new LoginModel();

		
		lm.setUsername(username);
		lm.setPassword(password);

		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		GymDAO gd = new GymDAO();
		String Status = gd.loginMember(lm);
		
		if(Status.equals("Success")) {
			RequestDispatcher rs = request.getRequestDispatcher("Home.jsp");
			rs.forward(request, response);
		}else {
			RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
			rs.forward(request, response);
		}
	}

}
