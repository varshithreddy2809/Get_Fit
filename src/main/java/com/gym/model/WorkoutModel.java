package com.gym.model;

public class WorkoutModel {

	private int age;
	private String gender;
	private double height;
	private double weight;
	private String goal;
	private String experience;

	private String daysPerWeek;
	private String workoutPlace;
	private String workoutDuration;
	private String injury;

	private String username;

	public WorkoutModel() {
	}

	public WorkoutModel(int ag, String gen, double hei, double wei, String gol, String exp, String days, String place,
			String duration, String injury) {

		this.age = ag;
		this.gender = gen;
		this.height = hei;
		this.weight = wei;
		this.goal = gol;
		this.experience = exp;
		this.daysPerWeek = days;
		this.workoutPlace = place;
		this.workoutDuration = duration;
		this.injury = injury;
	}
	


	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String user) {
		this.username = user;
	}

	public String getDaysPerWeek() {
	    return daysPerWeek;
	}

	public void setDaysPerWeek(String daysPerWeek) {
	    this.daysPerWeek = daysPerWeek;
	}

	public String getWorkoutPlace() {
	    return workoutPlace;
	}

	public void setWorkoutPlace(String workoutPlace) {
	    this.workoutPlace = workoutPlace;
	}

	public String getWorkoutDuration() {
	    return workoutDuration;
	}

	public void setWorkoutDuration(String workoutDuration) {
	    this.workoutDuration = workoutDuration;
	}

	public String getInjury() {
	    return injury;
	}

	public void setInjury(String injury) {
	    this.injury = injury;
	}
	public String toString() {
		return goal;
	}
}
