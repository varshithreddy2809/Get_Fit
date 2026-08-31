package com.gym.controller;

import java.io.IOException;

import com.gym.dao.GymDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CheckWorkoutController")
public class CheckWorkoutController extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String username = (String) session.getAttribute("username");

        GymDAO dao = new GymDAO();

        if (dao.assessmentExists(username)) {

            response.sendRedirect("plan.jsp");

        } else {

            response.sendRedirect("workout.jsp");

        }
    }
}