package com.gym.service.plans;

import java.util.ArrayList;
import java.util.List;
import com.gym.model.WorkoutModel;
import com.gym.service.Exercise;
import com.gym.service.WorkoutDay;

public class MaintainFitnessPlanner {

    public List<WorkoutDay> generate(WorkoutModel wm) {

        List<WorkoutDay> workout = new ArrayList<>();

        if (wm.getDaysPerWeek().equals("3")) {

            WorkoutDay monday = new WorkoutDay("Monday - Full Body");

            monday.addExercise(new Exercise("Squats",3,"12","60 sec"));
            monday.addExercise(new Exercise("Push Ups",3,"15","45 sec"));
            monday.addExercise(new Exercise("Lat Pulldown",3,"12","60 sec"));
            monday.addExercise(new Exercise("Shoulder Press",3,"12","60 sec"));
            monday.addExercise(new Exercise("Plank",3,"45 sec","30 sec"));

            workout.add(monday);

            WorkoutDay wednesday = new WorkoutDay("Wednesday - Cardio");

            wednesday.addExercise(new Exercise("Running",1,"30 min","-"));
            wednesday.addExercise(new Exercise("Cycling",1,"20 min","-"));
            wednesday.addExercise(new Exercise("Mountain Climbers",3,"20","30 sec"));

            workout.add(wednesday);

            WorkoutDay friday = new WorkoutDay("Friday - Full Body");

            friday.addExercise(new Exercise("Leg Press",3,"12","60 sec"));
            friday.addExercise(new Exercise("Chest Press",3,"12","60 sec"));
            friday.addExercise(new Exercise("Cable Row",3,"12","60 sec"));
            friday.addExercise(new Exercise("Lateral Raise",3,"15","45 sec"));
            friday.addExercise(new Exercise("Crunches",3,"20","30 sec"));

            workout.add(friday);

        }

        else if (wm.getDaysPerWeek().equals("4")) {

            WorkoutDay monday = new WorkoutDay("Monday - Upper Body");

            monday.addExercise(new Exercise("Bench Press",3,"10","90 sec"));
            monday.addExercise(new Exercise("Lat Pulldown",3,"10","90 sec"));
            monday.addExercise(new Exercise("Shoulder Press",3,"12","60 sec"));

            workout.add(monday);

            WorkoutDay tuesday = new WorkoutDay("Tuesday - Cardio");

            tuesday.addExercise(new Exercise("Running",1,"30 min","-"));
            tuesday.addExercise(new Exercise("Cycling",1,"20 min","-"));

            workout.add(tuesday);

            WorkoutDay thursday = new WorkoutDay("Thursday - Lower Body");

            thursday.addExercise(new Exercise("Squats",3,"12","90 sec"));
            thursday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
            thursday.addExercise(new Exercise("Calf Raise",3,"15","45 sec"));

            workout.add(thursday);

            WorkoutDay friday = new WorkoutDay("Friday - Core");

            friday.addExercise(new Exercise("Plank",3,"60 sec","30 sec"));
            friday.addExercise(new Exercise("Russian Twist",3,"20","30 sec"));
            friday.addExercise(new Exercise("Leg Raise",3,"15","30 sec"));

            workout.add(friday);

        }

        else {

            WorkoutDay monday = new WorkoutDay("Monday - Full Body");

            monday.addExercise(new Exercise("Squats",3,"12","60 sec"));
            monday.addExercise(new Exercise("Bench Press",3,"10","90 sec"));
            monday.addExercise(new Exercise("Lat Pulldown",3,"10","90 sec"));
            monday.addExercise(new Exercise("Plank",3,"45 sec","30 sec"));

            workout.add(monday);

            WorkoutDay tuesday = new WorkoutDay("Tuesday - Cardio");

            tuesday.addExercise(new Exercise("Running",1,"30 min","-"));
            workout.add(tuesday);

            WorkoutDay wednesday = new WorkoutDay("Wednesday - Upper Body");

            wednesday.addExercise(new Exercise("Shoulder Press",3,"12","60 sec"));
            wednesday.addExercise(new Exercise("Cable Row",3,"12","60 sec"));

            workout.add(wednesday);

            WorkoutDay thursday = new WorkoutDay("Thursday - Cardio");

            thursday.addExercise(new Exercise("Cycling",1,"30 min","-"));

            workout.add(thursday);

            WorkoutDay friday = new WorkoutDay("Friday - Lower Body");

            friday.addExercise(new Exercise("Leg Press",3,"12","90 sec"));
            friday.addExercise(new Exercise("Leg Curl",3,"12","60 sec"));

            workout.add(friday);

        }

        return workout;

    }

}