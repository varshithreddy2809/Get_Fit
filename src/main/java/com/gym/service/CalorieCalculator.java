package com.gym.service;

public class CalorieCalculator {

    public int calculateCalories(String gender, double weight, double height, int age, String goal) {

        double bmr;

        // Mifflin-St Jeor Formula
        if (gender.equalsIgnoreCase("Male")) {

            bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;

        } else {

            bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;

        }

        // Assuming Moderate Activity (Gym 3-6 Days)
        double calories = bmr * 1.55;

        // Adjust according to goal
        if (goal.equalsIgnoreCase("Muscle Gain")) {

            calories += 300;

        }

        else if (goal.equalsIgnoreCase("Weight Loss")) {

            calories -= 500;

        }

        // Maintain Fitness -> No change

        return (int) Math.round(calories);

    }

}