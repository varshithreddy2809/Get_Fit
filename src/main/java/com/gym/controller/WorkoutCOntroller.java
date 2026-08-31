package com.gym.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import com.gym.service.WorkoutPlanner;
import com.gym.service.WorkoutDay;
import com.gym.service.BMICalculator;
import com.gym.service.CalorieCalculator;
import com.gym.service.ProteinCalculator;
import com.gym.service.WaterCalculator;
import com.gym.service.DietPlanner;

import com.gym.dao.GymDAO;
import com.gym.model.WorkoutModel;

@WebServlet("/WorkoutCOntroller")
public class WorkoutCOntroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {

		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		String goal = request.getParameter("goal");
		String experience = request.getParameter("experience");
		String daysPerWeek = request.getParameter("daysPerWeek");
		String workoutPlace = request.getParameter("workoutPlace");
		String workoutDuration = request.getParameter("workoutDuration");
		String injury = request.getParameter("injury");

		WorkoutModel wm = new WorkoutModel();

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");

		System.out.println("Session Username = " + username);
		wm.setAge(age);
		wm.setGender(gender);
		wm.setHeight(height);
		wm.setWeight(weight);
		wm.setGoal(goal);
		wm.setExperience(experience);

		wm.setDaysPerWeek(daysPerWeek);
		wm.setWorkoutPlace(workoutPlace);
		wm.setWorkoutDuration(workoutDuration);
		wm.setInjury(injury);

		wm.setUsername(username);

		GymDAO gd = new GymDAO();
		String Status = gd.getWorkoutPlan(wm);
		
		WorkoutPlanner planner = new WorkoutPlanner();
		List<WorkoutDay> workout = planner.generateWorkout(wm);

		/* BMI */
		BMICalculator bmiCalculator = new BMICalculator();
		double bmi = bmiCalculator.calculateBMI(height, weight);
		String bmiStatus = bmiCalculator.getBMIStatus(bmi);

		/* Calories */
		CalorieCalculator calorieCalculator = new CalorieCalculator();
		int calories = calorieCalculator.calculateCalories(
		        gender,
		        weight,
		        height,
		        age,
		        goal);

		/* Protein */
		ProteinCalculator proteinCalculator = new ProteinCalculator();
		int protein = proteinCalculator.calculateProtein(weight, goal);

		/* Water */
		WaterCalculator waterCalculator = new WaterCalculator();
		double water = waterCalculator.calculateWater(weight);

		/* Diet */
		DietPlanner dietPlanner = new DietPlanner();
		List<String> diet = dietPlanner.generateDiet(goal);
		/* Progress Bars */

		int bmiProgress = Math.min((int)((bmi / 40.0) * 100), 100);

		int calorieProgress = Math.min((calories * 100) / 3500, 100);

		int proteinProgress = Math.min((protein * 100) / 200, 100);

		int waterProgress = Math.min((int)((water * 100) / 5), 100);

		/* Send to JSP */
		request.setAttribute("workout", workout);
		request.setAttribute("bmi", bmi);
		request.setAttribute("status", bmiStatus);
		request.setAttribute("calories", calories);
		request.setAttribute("protein", protein);
		request.setAttribute("water", water);
		request.setAttribute("diet", diet);
		request.setAttribute("bmiProgress", bmiProgress);
		request.setAttribute("calorieProgress", calorieProgress);
		request.setAttribute("proteinProgress", proteinProgress);
		request.setAttribute("waterProgress", waterProgress);

		/* Existing assessment values */
		request.setAttribute("age", age);
		request.setAttribute("gender", gender);
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		request.setAttribute("goal", goal);
		request.setAttribute("experience", experience);
		request.setAttribute("daysPerWeek", daysPerWeek);
		request.setAttribute("workoutPlace", workoutPlace);
		request.setAttribute("workoutDuration", workoutDuration);
		request.setAttribute("injury", injury);

		if (Status.equals("Success")) {
			RequestDispatcher rs = request.getRequestDispatcher("plan.jsp");
			rs.forward(request, response);
		} else {
			RequestDispatcher rs = request.getRequestDispatcher("workout.jsp");
			rs.forward(request, response);
		}

	}

}
