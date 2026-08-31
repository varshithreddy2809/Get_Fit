package com.gym.service;

public class Exercise {

    private String exerciseName;
    private int sets;
    private String reps;
    private String restTime;

    public Exercise(String exerciseName, int sets, String reps, String restTime) {
        this.exerciseName = exerciseName;
        this.sets = sets;
        this.reps = reps;
        this.restTime = restTime;
    }

    public String getExerciseName() {
        return exerciseName;
    }

    public int getSets() {
        return sets;
    }

    public String getReps() {
        return reps;
    }

    public String getRestTime() {
        return restTime;
    }
}