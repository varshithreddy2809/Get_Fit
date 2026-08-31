package com.gym.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.gym.model.GymObject;
import com.gym.model.LoginModel;
import com.gym.model.WorkoutModel;
import com.gym.utility.GymDBConnection;

public class GymDAO implements GymDAOInterface {

	Connection con = null;
	String Status = "fail";

	public String insertMember(GymObject go) {

		try {
			con = GymDBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into gymmember values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, go.getUsername());
			ps.setString(2, go.getFirstname());
			ps.setString(3, go.getLastname());
			ps.setString(4, go.getEmail());
			ps.setString(5, go.getPhone());
			ps.setInt(6, go.getAge());
			ps.setString(7, go.getGender());
			ps.setString(8, go.getPlan());
			ps.setString(9, go.getPassword());

			int n = ps.executeUpdate();
			if (n > 0) {
				Status = "Success";
			} else {
				System.out.println("Something went Wromg!!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return Status;
	}

	public String loginMember(LoginModel lm) {
		String Status = "fail";
		try {
			con = GymDBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM gymmember where username = ? AND password = ?;");
			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Status = "Success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return Status;
	}

	public String getWorkoutPlan(WorkoutModel wm) {

	    String status = "fail";

	    try {

	        con = GymDBConnection.getConnection();

	        PreparedStatement check = con.prepareStatement(
	                "SELECT * FROM workout WHERE username=?");

	        check.setString(1, wm.getUsername());

	        ResultSet rs = check.executeQuery();

	        PreparedStatement ps;

	        if (rs.next()) {

	        	ps = con.prepareStatement(
	        			"UPDATE workout SET age=?, gender=?, height=?, weight=?, goal=?, experience=?, days_per_week=?, workout_place=?, workout_duration=?, injury=? WHERE username=?");
	        	ps.setInt(1, wm.getAge());
	        	ps.setString(2, wm.getGender());
	        	ps.setDouble(3, wm.getHeight());
	        	ps.setDouble(4, wm.getWeight());
	        	ps.setString(5, wm.getGoal());
	        	ps.setString(6, wm.getExperience());

	        	ps.setString(7, wm.getDaysPerWeek());
	        	ps.setString(8, wm.getWorkoutPlace());
	        	ps.setString(9, wm.getWorkoutDuration());
	        	ps.setString(10, wm.getInjury());

	        	ps.setString(11, wm.getUsername());

	        } else {

	        	ps = con.prepareStatement(
	        			"INSERT INTO workout(username, age, gender, height, weight, goal, experience, days_per_week, workout_place, workout_duration, injury) VALUES(?,?,?,?,?,?,?,?,?,?,?)");

	        	ps.setString(1, wm.getUsername());
	        	ps.setInt(2, wm.getAge());
	        	ps.setString(3, wm.getGender());
	        	ps.setDouble(4, wm.getHeight());
	        	ps.setDouble(5, wm.getWeight());
	        	ps.setString(6, wm.getGoal());
	        	ps.setString(7, wm.getExperience());

	        	ps.setString(8, wm.getDaysPerWeek());
	        	ps.setString(9, wm.getWorkoutPlace());
	        	ps.setString(10, wm.getWorkoutDuration());
	        	ps.setString(11, wm.getInjury());

	        }

	        int n = ps.executeUpdate();

	        if (n > 0) {
	            status = "Success";
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}

	@Override
	public boolean assessmentExists(String username) {

		boolean found = false;

		try {

			con = GymDBConnection.getConnection();

			PreparedStatement ps = con.prepareStatement("SELECT * FROM workout WHERE username=?");

			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				found = true;

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return found;
	}

}