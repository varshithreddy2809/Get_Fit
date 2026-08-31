package com.gym.dao;

import com.gym.model.GymObject;
import com.gym.model.LoginModel;
import com.gym.model.WorkoutModel;

public interface GymDAOInterface {

	public String insertMember(GymObject go);
	
	public String loginMember(LoginModel lm);
	
	public String getWorkoutPlan(WorkoutModel wm);
	
	public boolean assessmentExists(String username);
}
