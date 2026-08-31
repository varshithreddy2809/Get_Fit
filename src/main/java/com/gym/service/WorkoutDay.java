package com.gym.service;

import java.util.ArrayList;
import java.util.List;

public class WorkoutDay {

    private String day;
    private List<Exercise> exercises = new ArrayList<>();

    public WorkoutDay(String day) {
        this.day = day;
    }

    public void addExercise(Exercise exercise) {
        exercises.add(exercise);
    }

    public String getDay() {
        return day;
    }

    public List<Exercise> getExercises() {
        return exercises;
    }
}