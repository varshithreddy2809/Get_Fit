package com.gym.service;

public class ProteinCalculator {

    public int calculateProtein(double weight, String goal) {

        double protein;

        if (goal.equalsIgnoreCase("Muscle Gain")) {

            protein = weight * 2.0;

        }

        else if (goal.equalsIgnoreCase("Weight Loss")) {

            protein = weight * 1.8;

        }

        else {

            protein = weight * 1.5;

        }

        return (int) Math.round(protein);

    }

}