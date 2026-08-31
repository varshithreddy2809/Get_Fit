package com.gym.service.plans;

import java.util.ArrayList;
import java.util.List;

import com.gym.model.WorkoutModel;
import com.gym.service.Exercise;
import com.gym.service.WorkoutDay;

public class WeightLossPlanner {

	public List<WorkoutDay> generate(WorkoutModel wm) {

		List<WorkoutDay> workout = new ArrayList<>();

		if (wm.getExperience().equals("Beginner")) {

			if (wm.getDaysPerWeek().equals("3")) {

				WorkoutDay monday = new WorkoutDay("Monday - Full Body");

				monday.addExercise(new Exercise("Bodyweight Squats", 3, "15", "45 sec"));
				monday.addExercise(new Exercise("Push Ups", 3, "12", "45 sec"));
				monday.addExercise(new Exercise("Lat Pulldown", 3, "12", "60 sec"));
				monday.addExercise(new Exercise("Walking Lunges", 3, "12", "45 sec"));
				monday.addExercise(new Exercise("Plank", 3, "30 sec", "30 sec"));
				monday.addExercise(new Exercise("Treadmill Walk", 1, "20 min", "-"));

				workout.add(monday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Cardio & Core");

				wednesday.addExercise(new Exercise("Cycling", 1, "25 min", "-"));
				wednesday.addExercise(new Exercise("Mountain Climbers", 3, "20", "30 sec"));
				wednesday.addExercise(new Exercise("Crunches", 3, "20", "30 sec"));
				wednesday.addExercise(new Exercise("Leg Raises", 3, "15", "30 sec"));

				workout.add(wednesday);

				WorkoutDay friday = new WorkoutDay("Friday - Full Body");

				friday.addExercise(new Exercise("Goblet Squat", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Chest Press", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Seated Row", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Shoulder Press", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Elliptical", 1, "20 min", "-"));

				workout.add(friday);

			}

			else if (wm.getDaysPerWeek().equals("4")) {

				WorkoutDay monday = new WorkoutDay("Monday - Upper Body");
				monday.addExercise(new Exercise("Push Ups", 3, "15", "45 sec"));
				monday.addExercise(new Exercise("Lat Pulldown", 3, "15", "45 sec"));
				monday.addExercise(new Exercise("Shoulder Press", 3, "12", "45 sec"));
				monday.addExercise(new Exercise("Jump Rope", 1, "15 min", "-"));
				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Cardio");
				tuesday.addExercise(new Exercise("Running", 1, "30 min", "-"));
				tuesday.addExercise(new Exercise("Cycling", 1, "20 min", "-"));
				workout.add(tuesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - Lower Body");
				thursday.addExercise(new Exercise("Goblet Squats", 3, "15", "45 sec"));
				thursday.addExercise(new Exercise("Walking Lunges", 3, "15", "45 sec"));
				thursday.addExercise(new Exercise("Leg Press", 3, "15", "60 sec"));
				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - Core");
				friday.addExercise(new Exercise("Plank", 3, "45 sec", "30 sec"));
				friday.addExercise(new Exercise("Crunches", 3, "20", "30 sec"));
				friday.addExercise(new Exercise("Mountain Climbers", 3, "20", "30 sec"));
				workout.add(friday);

			}

			else if (wm.getDaysPerWeek().equals("5")) {

				WorkoutDay monday = new WorkoutDay("Monday - Upper Body");

				monday.addExercise(new Exercise("Push Ups", 3, "15", "45 sec"));
				monday.addExercise(new Exercise("Lat Pulldown", 3, "15", "45 sec"));
				monday.addExercise(new Exercise("Shoulder Press", 3, "12", "45 sec"));
				monday.addExercise(new Exercise("Jump Rope", 1, "15 min", "-"));

				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Cardio");

				tuesday.addExercise(new Exercise("Running", 1, "35 min", "-"));
				tuesday.addExercise(new Exercise("Cycling", 1, "20 min", "-"));

				workout.add(tuesday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Lower Body");

				wednesday.addExercise(new Exercise("Goblet Squats", 3, "15", "45 sec"));
				wednesday.addExercise(new Exercise("Walking Lunges", 3, "15", "45 sec"));
				wednesday.addExercise(new Exercise("Leg Press", 3, "15", "60 sec"));

				workout.add(wednesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - Core");

				thursday.addExercise(new Exercise("Plank", 3, "45 sec", "30 sec"));
				thursday.addExercise(new Exercise("Crunches", 3, "20", "30 sec"));
				thursday.addExercise(new Exercise("Mountain Climbers", 3, "20", "30 sec"));

				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - HIIT");

				friday.addExercise(new Exercise("Burpees", 3, "15", "30 sec"));
				friday.addExercise(new Exercise("Jump Rope", 1, "20 min", "-"));
				friday.addExercise(new Exercise("High Knees", 3, "30 sec", "30 sec"));

				workout.add(friday);

			}

			else if (wm.getDaysPerWeek().equals("6")) {

				WorkoutDay monday = new WorkoutDay("Monday - Upper Body");
				monday.addExercise(new Exercise("Push Ups", 4, "15", "45 sec"));
				monday.addExercise(new Exercise("Lat Pulldown", 4, "12", "45 sec"));
				monday.addExercise(new Exercise("Shoulder Press", 3, "12", "45 sec"));
				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Cardio");
				tuesday.addExercise(new Exercise("Running", 1, "40 min", "-"));
				workout.add(tuesday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Lower Body");
				wednesday.addExercise(new Exercise("Goblet Squats", 4, "15", "45 sec"));
				wednesday.addExercise(new Exercise("Walking Lunges", 3, "15", "45 sec"));
				wednesday.addExercise(new Exercise("Leg Press", 3, "15", "60 sec"));
				workout.add(wednesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - HIIT");
				thursday.addExercise(new Exercise("Burpees", 4, "15", "30 sec"));
				thursday.addExercise(new Exercise("Mountain Climbers", 4, "20", "30 sec"));
				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - Full Body");
				friday.addExercise(new Exercise("Chest Press", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Seated Row", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Shoulder Press", 3, "12", "60 sec"));
				workout.add(friday);

				WorkoutDay saturday = new WorkoutDay("Saturday - Cardio");
				saturday.addExercise(new Exercise("Cycling", 1, "45 min", "-"));
				saturday.addExercise(new Exercise("Walking", 1, "20 min", "-"));
				workout.add(saturday);

			}

		}

		else if (wm.getExperience().equals("Intermediate")) {

			if (wm.getDaysPerWeek().equals("3")) {

				return intermediatePlan();
			}

			else if (wm.getDaysPerWeek().equals("4")) {

				return intermediatePlan();

			}

			else if (wm.getDaysPerWeek().equals("5")) {

				return intermediatePlan();
			}

			else {

				return intermediatePlan();

			}

		}

		else if (wm.getExperience().equals("Advanced")) {

			if (wm.getDaysPerWeek().equals("3")) {

				return advancedPlan();
			}

			else if (wm.getDaysPerWeek().equals("4")) {

				return advancedPlan();
			}

			else if (wm.getDaysPerWeek().equals("5")) {

				return advancedPlan();
			}

			else {

				return advancedPlan();
			}

		}

		return workout;

	}

	private List<WorkoutDay> intermediatePlan() {

		List<WorkoutDay> workout = new ArrayList<>();

		WorkoutDay monday = new WorkoutDay("Monday - Upper Body");

		monday.addExercise(new Exercise("Bench Press", 4, "12", "45 sec"));
		monday.addExercise(new Exercise("Lat Pulldown", 4, "12", "45 sec"));
		monday.addExercise(new Exercise("Shoulder Press", 4, "12", "45 sec"));
		monday.addExercise(new Exercise("Battle Rope", 1, "15 min", "-"));

		workout.add(monday);

		WorkoutDay wednesday = new WorkoutDay("Wednesday - Lower Body");

		wednesday.addExercise(new Exercise("Squats", 4, "15", "60 sec"));
		wednesday.addExercise(new Exercise("Leg Press", 4, "15", "60 sec"));
		wednesday.addExercise(new Exercise("Walking Lunges", 4, "20", "45 sec"));

		workout.add(wednesday);

		WorkoutDay friday = new WorkoutDay("Friday - HIIT");

		friday.addExercise(new Exercise("Burpees", 4, "20", "30 sec"));
		friday.addExercise(new Exercise("Mountain Climbers", 4, "25", "30 sec"));
		friday.addExercise(new Exercise("Cycling", 1, "30 min", "-"));

		workout.add(friday);

		return workout;

	}

	private List<WorkoutDay> advancedPlan() {

		List<WorkoutDay> workout = new ArrayList<>();

		WorkoutDay monday = new WorkoutDay("Monday - Full Body Strength");

		monday.addExercise(new Exercise("Deadlift", 5, "6", "90 sec"));
		monday.addExercise(new Exercise("Bench Press", 5, "8", "90 sec"));
		monday.addExercise(new Exercise("Pull Ups", 4, "10", "60 sec"));

		workout.add(monday);

		WorkoutDay wednesday = new WorkoutDay("Wednesday - HIIT");

		wednesday.addExercise(new Exercise("Sprint", 10, "30 sec", "30 sec"));
		wednesday.addExercise(new Exercise("Burpees", 5, "20", "30 sec"));
		wednesday.addExercise(new Exercise("Battle Rope", 5, "30 sec", "30 sec"));

		workout.add(wednesday);

		WorkoutDay friday = new WorkoutDay("Friday - Legs");

		friday.addExercise(new Exercise("Squats", 5, "8", "90 sec"));
		friday.addExercise(new Exercise("Romanian Deadlift", 4, "10", "90 sec"));
		friday.addExercise(new Exercise("Leg Press", 4, "12", "60 sec"));

		workout.add(friday);

		return workout;

	}
}