package com.gym.service.plans;

import java.util.ArrayList;
import java.util.List;

import com.gym.model.WorkoutModel;
import com.gym.service.Exercise;
import com.gym.service.WorkoutDay;

public class MuscleGainPlanner {

	public List<WorkoutDay> generate(WorkoutModel wm) {

		List<WorkoutDay> workout = new ArrayList<>();

		if (wm.getExperience().equals("Beginner")) {

			if (wm.getDaysPerWeek().equals("3")) {

				WorkoutDay monday = new WorkoutDay("Monday - Chest & Triceps");

				monday.addExercise(new Exercise("Bench Press", 3, "10", "90 sec"));
				monday.addExercise(new Exercise("Incline Dumbbell Press", 3, "12", "90 sec"));
				monday.addExercise(new Exercise("Cable Fly", 3, "15", "60 sec"));
				monday.addExercise(new Exercise("Triceps Pushdown", 3, "12", "60 sec"));

				workout.add(monday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Back & Biceps");

				wednesday.addExercise(new Exercise("Lat Pulldown", 3, "10", "90 sec"));
				wednesday.addExercise(new Exercise("Seated Cable Row", 3, "12", "90 sec"));
				wednesday.addExercise(new Exercise("Face Pull", 3, "15", "60 sec"));
				wednesday.addExercise(new Exercise("Dumbbell Curl", 3, "12", "60 sec"));

				workout.add(wednesday);

				WorkoutDay friday = new WorkoutDay("Friday - Legs & Shoulders");

				friday.addExercise(new Exercise("Squats", 3, "10", "120 sec"));
				friday.addExercise(new Exercise("Leg Press", 3, "12", "90 sec"));
				friday.addExercise(new Exercise("Shoulder Press", 3, "10", "90 sec"));
				friday.addExercise(new Exercise("Lateral Raise", 3, "15", "60 sec"));

				workout.add(friday);
			}

			else if (wm.getDaysPerWeek().equals("4")) {

				WorkoutDay monday = new WorkoutDay("Monday - Chest & Triceps");

				monday.addExercise(new Exercise("Bench Press", 4, "8-10", "90 sec"));
				monday.addExercise(new Exercise("Incline Dumbbell Press", 3, "10-12", "90 sec"));
				monday.addExercise(new Exercise("Chest Fly", 3, "12-15", "60 sec"));
				monday.addExercise(new Exercise("Triceps Pushdown", 3, "12", "60 sec"));

				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Back & Biceps");

				tuesday.addExercise(new Exercise("Lat Pulldown", 4, "10", "90 sec"));
				tuesday.addExercise(new Exercise("Seated Cable Row", 3, "12", "90 sec"));
				tuesday.addExercise(new Exercise("Face Pull", 3, "15", "60 sec"));
				tuesday.addExercise(new Exercise("Hammer Curl", 3, "12", "60 sec"));

				workout.add(tuesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - Legs");

				thursday.addExercise(new Exercise("Squats", 4, "8", "120 sec"));
				thursday.addExercise(new Exercise("Leg Press", 3, "12", "90 sec"));
				thursday.addExercise(new Exercise("Leg Curl", 3, "12", "60 sec"));
				thursday.addExercise(new Exercise("Standing Calf Raise", 4, "15", "45 sec"));

				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - Shoulders & Abs");

				friday.addExercise(new Exercise("Shoulder Press", 4, "10", "90 sec"));
				friday.addExercise(new Exercise("Lateral Raise", 3, "15", "60 sec"));
				friday.addExercise(new Exercise("Rear Delt Fly", 3, "15", "60 sec"));
				friday.addExercise(new Exercise("Cable Crunch", 3, "20", "45 sec"));

				workout.add(friday);

			}

			else if (wm.getDaysPerWeek().equals("5")) {

				WorkoutDay monday = new WorkoutDay("Monday - Chest");

				monday.addExercise(new Exercise("Bench Press", 4, "8-10", "90 sec"));
				monday.addExercise(new Exercise("Incline Bench Press", 3, "10", "90 sec"));
				monday.addExercise(new Exercise("Cable Fly", 3, "12", "60 sec"));
				monday.addExercise(new Exercise("Push Ups", 3, "15", "45 sec"));

				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Back");

				tuesday.addExercise(new Exercise("Lat Pulldown", 4, "10", "90 sec"));
				tuesday.addExercise(new Exercise("Barbell Row", 3, "10", "90 sec"));
				tuesday.addExercise(new Exercise("Seated Cable Row", 3, "12", "60 sec"));
				tuesday.addExercise(new Exercise("Straight Arm Pulldown", 3, "15", "60 sec"));

				workout.add(tuesday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");

				wednesday.addExercise(new Exercise("Squats", 4, "8", "120 sec"));
				wednesday.addExercise(new Exercise("Leg Press", 3, "12", "90 sec"));
				wednesday.addExercise(new Exercise("Leg Curl", 3, "12", "60 sec"));
				wednesday.addExercise(new Exercise("Standing Calf Raise", 4, "15", "45 sec"));

				workout.add(wednesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - Shoulders");

				thursday.addExercise(new Exercise("Shoulder Press", 4, "10", "90 sec"));
				thursday.addExercise(new Exercise("Lateral Raise", 3, "15", "60 sec"));
				thursday.addExercise(new Exercise("Rear Delt Fly", 3, "15", "60 sec"));
				thursday.addExercise(new Exercise("Shrugs", 3, "15", "60 sec"));

				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - Arms");

				friday.addExercise(new Exercise("Barbell Curl", 3, "10", "60 sec"));
				friday.addExercise(new Exercise("Hammer Curl", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Triceps Pushdown", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Overhead Triceps Extension", 3, "12", "60 sec"));

				workout.add(friday);

			} else if (wm.getDaysPerWeek().equals("6")) {

				WorkoutDay monday = new WorkoutDay("Monday - Push");

				monday.addExercise(new Exercise("Bench Press", 4, "8", "90 sec"));
				monday.addExercise(new Exercise("Incline DB Press", 3, "10", "90 sec"));
				monday.addExercise(new Exercise("Shoulder Press", 3, "10", "90 sec"));
				monday.addExercise(new Exercise("Triceps Pushdown", 3, "12", "60 sec"));

				workout.add(monday);

				WorkoutDay tuesday = new WorkoutDay("Tuesday - Pull");

				tuesday.addExercise(new Exercise("Deadlift", 3, "6", "120 sec"));
				tuesday.addExercise(new Exercise("Lat Pulldown", 4, "10", "90 sec"));
				tuesday.addExercise(new Exercise("Barbell Row", 3, "10", "90 sec"));
				tuesday.addExercise(new Exercise("Hammer Curl", 3, "12", "60 sec"));

				workout.add(tuesday);

				WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");

				wednesday.addExercise(new Exercise("Squats", 4, "8", "120 sec"));
				wednesday.addExercise(new Exercise("Romanian Deadlift", 3, "10", "90 sec"));
				wednesday.addExercise(new Exercise("Leg Press", 3, "12", "90 sec"));
				wednesday.addExercise(new Exercise("Calf Raise", 4, "15", "45 sec"));

				workout.add(wednesday);

				WorkoutDay thursday = new WorkoutDay("Thursday - Push");

				thursday.addExercise(new Exercise("Incline Bench Press", 4, "8", "90 sec"));
				thursday.addExercise(new Exercise("Chest Fly", 3, "12", "60 sec"));
				thursday.addExercise(new Exercise("Arnold Press", 3, "10", "90 sec"));
				thursday.addExercise(new Exercise("Overhead Extension", 3, "12", "60 sec"));

				workout.add(thursday);

				WorkoutDay friday = new WorkoutDay("Friday - Pull");

				friday.addExercise(new Exercise("Pull Ups", 3, "8", "90 sec"));
				friday.addExercise(new Exercise("Cable Row", 3, "12", "60 sec"));
				friday.addExercise(new Exercise("Face Pull", 3, "15", "60 sec"));
				friday.addExercise(new Exercise("EZ Bar Curl", 3, "12", "60 sec"));

				workout.add(friday);

				WorkoutDay saturday = new WorkoutDay("Saturday - Legs");

				saturday.addExercise(new Exercise("Front Squat", 3, "10", "90 sec"));
				saturday.addExercise(new Exercise("Walking Lunges", 3, "12", "60 sec"));
				saturday.addExercise(new Exercise("Leg Curl", 3, "15", "60 sec"));
				saturday.addExercise(new Exercise("Standing Calf Raise", 4, "20", "45 sec"));

				workout.add(saturday);

			}

        }

		else if (wm.getExperience().equals("Intermediate")) {

		    if (wm.getDaysPerWeek().equals("3")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Push");

		        monday.addExercise(new Exercise("Bench Press",4,"6-8","120 sec"));
		        monday.addExercise(new Exercise("Incline Dumbbell Press",4,"8-10","90 sec"));
		        monday.addExercise(new Exercise("Shoulder Press",3,"10","90 sec"));
		        monday.addExercise(new Exercise("Triceps Pushdown",3,"12","60 sec"));

		        workout.add(monday);


		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Pull");

		        wednesday.addExercise(new Exercise("Deadlift",3,"5","150 sec"));
		        wednesday.addExercise(new Exercise("Pull Ups",4,"8","90 sec"));
		        wednesday.addExercise(new Exercise("Barbell Row",4,"8","90 sec"));
		        wednesday.addExercise(new Exercise("Barbell Curl",3,"10","60 sec"));

		        workout.add(wednesday);


		        WorkoutDay friday = new WorkoutDay("Friday - Legs");

		        friday.addExercise(new Exercise("Squats",4,"6-8","150 sec"));
		        friday.addExercise(new Exercise("Romanian Deadlift",3,"10","90 sec"));
		        friday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
		        friday.addExercise(new Exercise("Standing Calf Raise",4,"15","45 sec"));

		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("4")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Chest");

		        monday.addExercise(new Exercise("Bench Press",5,"5-8","120 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8","90 sec"));
		        monday.addExercise(new Exercise("Chest Fly",3,"12","60 sec"));
		        monday.addExercise(new Exercise("Weighted Dips",3,"10","90 sec"));

		        workout.add(monday);


		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Back");

		        tuesday.addExercise(new Exercise("Deadlift",4,"5","150 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Barbell Row",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Face Pull",3,"15","60 sec"));

		        workout.add(tuesday);


		        WorkoutDay thursday = new WorkoutDay("Thursday - Legs");

		        thursday.addExercise(new Exercise("Back Squat",5,"5","150 sec"));
		        thursday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        thursday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
		        thursday.addExercise(new Exercise("Standing Calf Raise",4,"20","45 sec"));

		        workout.add(thursday);


		        WorkoutDay friday = new WorkoutDay("Friday - Shoulders & Arms");

		        friday.addExercise(new Exercise("Military Press",4,"8","90 sec"));
		        friday.addExercise(new Exercise("Lateral Raise",3,"15","60 sec"));
		        friday.addExercise(new Exercise("Barbell Curl",3,"10","60 sec"));
		        friday.addExercise(new Exercise("Skull Crushers",3,"10","60 sec"));

		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("5")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Chest");

		        monday.addExercise(new Exercise("Bench Press",5,"5-8","120 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8-10","90 sec"));
		        monday.addExercise(new Exercise("Chest Fly",3,"12","60 sec"));
		        monday.addExercise(new Exercise("Weighted Dips",3,"10","90 sec"));

		        workout.add(monday);

		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Back");

		        tuesday.addExercise(new Exercise("Deadlift",4,"5","150 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Barbell Row",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Cable Row",3,"12","60 sec"));

		        workout.add(tuesday);

		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");

		        wednesday.addExercise(new Exercise("Back Squat",5,"5","150 sec"));
		        wednesday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        wednesday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
		        wednesday.addExercise(new Exercise("Standing Calf Raise",4,"20","45 sec"));

		        workout.add(wednesday);

		        WorkoutDay thursday = new WorkoutDay("Thursday - Shoulders");

		        thursday.addExercise(new Exercise("Military Press",4,"8","90 sec"));
		        thursday.addExercise(new Exercise("Lateral Raise",3,"15","60 sec"));
		        thursday.addExercise(new Exercise("Rear Delt Fly",3,"15","60 sec"));
		        thursday.addExercise(new Exercise("Shrugs",3,"12","60 sec"));

		        workout.add(thursday);

		        WorkoutDay friday = new WorkoutDay("Friday - Arms");

		        friday.addExercise(new Exercise("Barbell Curl",4,"8","60 sec"));
		        friday.addExercise(new Exercise("Hammer Curl",3,"10","60 sec"));
		        friday.addExercise(new Exercise("Skull Crushers",3,"10","60 sec"));
		        friday.addExercise(new Exercise("Rope Pushdown",3,"12","60 sec"));

		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("6")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Push");

		        monday.addExercise(new Exercise("Bench Press",5,"5","120 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8","90 sec"));
		        monday.addExercise(new Exercise("Shoulder Press",4,"8","90 sec"));
		        monday.addExercise(new Exercise("Triceps Pushdown",3,"12","60 sec"));

		        workout.add(monday);

		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Pull");

		        tuesday.addExercise(new Exercise("Deadlift",4,"5","150 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Barbell Row",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("Hammer Curl",3,"10","60 sec"));

		        workout.add(tuesday);

		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");

		        wednesday.addExercise(new Exercise("Back Squat",5,"5","150 sec"));
		        wednesday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        wednesday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
		        wednesday.addExercise(new Exercise("Standing Calf Raise",4,"20","45 sec"));

		        workout.add(wednesday);

		        WorkoutDay thursday = new WorkoutDay("Thursday - Push");

		        thursday.addExercise(new Exercise("Incline Dumbbell Press",4,"8","90 sec"));
		        thursday.addExercise(new Exercise("Chest Fly",3,"12","60 sec"));
		        thursday.addExercise(new Exercise("Arnold Press",3,"10","90 sec"));
		        thursday.addExercise(new Exercise("Overhead Extension",3,"12","60 sec"));

		        workout.add(thursday);

		        WorkoutDay friday = new WorkoutDay("Friday - Pull");

		        friday.addExercise(new Exercise("Cable Row",4,"10","90 sec"));
		        friday.addExercise(new Exercise("Lat Pulldown",4,"10","90 sec"));
		        friday.addExercise(new Exercise("Face Pull",3,"15","60 sec"));
		        friday.addExercise(new Exercise("EZ Bar Curl",3,"10","60 sec"));

		        workout.add(friday);

		        WorkoutDay saturday = new WorkoutDay("Saturday - Legs");

		        saturday.addExercise(new Exercise("Front Squat",4,"8","120 sec"));
		        saturday.addExercise(new Exercise("Walking Lunges",3,"12","60 sec"));
		        saturday.addExercise(new Exercise("Leg Curl",3,"12","60 sec"));
		        saturday.addExercise(new Exercise("Seated Calf Raise",4,"20","45 sec"));

		        workout.add(saturday);

		    }

		}

		else if (wm.getExperience().equals("Advanced")) {

		    if (wm.getDaysPerWeek().equals("3")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Push (Strength)");

		        monday.addExercise(new Exercise("Bench Press",5,"5","150 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"6","120 sec"));
		        monday.addExercise(new Exercise("Overhead Press",4,"6","120 sec"));
		        monday.addExercise(new Exercise("Weighted Dips",3,"8","90 sec"));

		        workout.add(monday);


		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Pull (Strength)");

		        wednesday.addExercise(new Exercise("Deadlift",5,"5","180 sec"));
		        wednesday.addExercise(new Exercise("Weighted Pull Ups",4,"6","120 sec"));
		        wednesday.addExercise(new Exercise("Pendlay Row",4,"8","120 sec"));
		        wednesday.addExercise(new Exercise("Barbell Curl",3,"10","60 sec"));

		        workout.add(wednesday);


		        WorkoutDay friday = new WorkoutDay("Friday - Legs");

		        friday.addExercise(new Exercise("Back Squat",5,"5","180 sec"));
		        friday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        friday.addExercise(new Exercise("Leg Press",3,"10","90 sec"));
		        friday.addExercise(new Exercise("Standing Calf Raise",5,"20","45 sec"));

		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("4")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Chest & Triceps");

		        monday.addExercise(new Exercise("Flat Bench Press",5,"5","150 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8","120 sec"));
		        monday.addExercise(new Exercise("Weighted Dips",4,"10","90 sec"));
		        monday.addExercise(new Exercise("Rope Pushdown",4,"12","60 sec"));

		        workout.add(monday);

		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Back & Biceps");

		        tuesday.addExercise(new Exercise("Deadlift",5,"5","180 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","120 sec"));
		        tuesday.addExercise(new Exercise("T-Bar Row",4,"8","90 sec"));
		        tuesday.addExercise(new Exercise("EZ Bar Curl",4,"10","60 sec"));

		        workout.add(tuesday);

		        WorkoutDay thursday = new WorkoutDay("Thursday - Legs");

		        thursday.addExercise(new Exercise("Back Squat",5,"5","180 sec"));
		        thursday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        thursday.addExercise(new Exercise("Leg Press",4,"12","90 sec"));
		        thursday.addExercise(new Exercise("Standing Calf Raise",5,"20","45 sec"));

		        workout.add(thursday);

		        WorkoutDay friday = new WorkoutDay("Friday - Shoulders & Arms");

		        friday.addExercise(new Exercise("Military Press",5,"5","120 sec"));
		        friday.addExercise(new Exercise("Lateral Raise",4,"15","60 sec"));
		        friday.addExercise(new Exercise("Skull Crushers",4,"10","60 sec"));
		        friday.addExercise(new Exercise("Hammer Curl",4,"10","60 sec"));

		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("5")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Chest");
		        monday.addExercise(new Exercise("Bench Press",5,"5","150 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8","120 sec"));
		        monday.addExercise(new Exercise("Machine Chest Press",4,"10","90 sec"));
		        monday.addExercise(new Exercise("Cable Fly",4,"15","60 sec"));
		        workout.add(monday);

		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Back");
		        tuesday.addExercise(new Exercise("Deadlift",5,"5","180 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","120 sec"));
		        tuesday.addExercise(new Exercise("Barbell Row",4,"8","120 sec"));
		        tuesday.addExercise(new Exercise("Cable Row",4,"12","90 sec"));
		        workout.add(tuesday);

		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");
		        wednesday.addExercise(new Exercise("Back Squat",5,"5","180 sec"));
		        wednesday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        wednesday.addExercise(new Exercise("Leg Press",4,"12","90 sec"));
		        wednesday.addExercise(new Exercise("Leg Extension",4,"15","60 sec"));
		        workout.add(wednesday);

		        WorkoutDay thursday = new WorkoutDay("Thursday - Shoulders");
		        thursday.addExercise(new Exercise("Military Press",5,"5","120 sec"));
		        thursday.addExercise(new Exercise("Arnold Press",4,"8","90 sec"));
		        thursday.addExercise(new Exercise("Lateral Raise",4,"15","60 sec"));
		        thursday.addExercise(new Exercise("Rear Delt Fly",4,"15","60 sec"));
		        workout.add(thursday);

		        WorkoutDay friday = new WorkoutDay("Friday - Arms");
		        friday.addExercise(new Exercise("EZ Bar Curl",4,"10","60 sec"));
		        friday.addExercise(new Exercise("Hammer Curl",4,"12","60 sec"));
		        friday.addExercise(new Exercise("Skull Crushers",4,"10","60 sec"));
		        friday.addExercise(new Exercise("Overhead Rope Extension",4,"12","60 sec"));
		        workout.add(friday);

		    }

		    else if (wm.getDaysPerWeek().equals("6")) {

		        WorkoutDay monday = new WorkoutDay("Monday - Push");
		        monday.addExercise(new Exercise("Bench Press",5,"5","150 sec"));
		        monday.addExercise(new Exercise("Incline Bench Press",4,"8","120 sec"));
		        monday.addExercise(new Exercise("Military Press",4,"8","120 sec"));
		        monday.addExercise(new Exercise("Weighted Dips",4,"10","90 sec"));
		        workout.add(monday);

		        WorkoutDay tuesday = new WorkoutDay("Tuesday - Pull");
		        tuesday.addExercise(new Exercise("Deadlift",5,"5","180 sec"));
		        tuesday.addExercise(new Exercise("Weighted Pull Ups",4,"8","120 sec"));
		        tuesday.addExercise(new Exercise("Barbell Row",4,"8","120 sec"));
		        tuesday.addExercise(new Exercise("Face Pull",4,"15","60 sec"));
		        workout.add(tuesday);

		        WorkoutDay wednesday = new WorkoutDay("Wednesday - Legs");
		        wednesday.addExercise(new Exercise("Back Squat",5,"5","180 sec"));
		        wednesday.addExercise(new Exercise("Romanian Deadlift",4,"8","120 sec"));
		        wednesday.addExercise(new Exercise("Leg Press",4,"12","90 sec"));
		        wednesday.addExercise(new Exercise("Standing Calf Raise",5,"20","45 sec"));
		        workout.add(wednesday);

		        WorkoutDay thursday = new WorkoutDay("Thursday - Push");
		        thursday.addExercise(new Exercise("Incline Dumbbell Press",4,"8","120 sec"));
		        thursday.addExercise(new Exercise("Chest Fly",4,"12","60 sec"));
		        thursday.addExercise(new Exercise("Arnold Press",4,"10","90 sec"));
		        thursday.addExercise(new Exercise("Overhead Rope Extension",4,"12","60 sec"));
		        workout.add(thursday);

		        WorkoutDay friday = new WorkoutDay("Friday - Pull");
		        friday.addExercise(new Exercise("Cable Row",4,"10","90 sec"));
		        friday.addExercise(new Exercise("Lat Pulldown",4,"10","90 sec"));
		        friday.addExercise(new Exercise("EZ Bar Curl",4,"10","60 sec"));
		        friday.addExercise(new Exercise("Hammer Curl",4,"12","60 sec"));
		        workout.add(friday);

		        WorkoutDay saturday = new WorkoutDay("Saturday - Legs");
		        saturday.addExercise(new Exercise("Front Squat",4,"8","120 sec"));
		        saturday.addExercise(new Exercise("Walking Lunges",4,"12","90 sec"));
		        saturday.addExercise(new Exercise("Leg Curl",4,"12","60 sec"));
		        saturday.addExercise(new Exercise("Seated Calf Raise",5,"20","45 sec"));
		        workout.add(saturday);

		    }

		}
        return workout;
    }
}