package com.gym.service;

public class BMICalculator {

    public double calculateBMI(double height, double weight) {

        // Convert cm to meters
        double heightInMeters = height / 100.0;

        // BMI Formula
        double bmi = weight / (heightInMeters * heightInMeters);

        // Round to 2 decimal places
        bmi = Math.round(bmi * 100.0) / 100.0;

        return bmi;
    }

    public String getBMIStatus(double bmi) {

        if (bmi < 18.5) {
            return "Underweight";
        }

        else if (bmi < 25) {
            return "Normal";
        }

        else if (bmi < 30) {
            return "Overweight";
        }

        else {
            return "Obese";
        }

    }

}