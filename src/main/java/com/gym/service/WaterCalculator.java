package com.gym.service;

public class WaterCalculator {

    public double calculateWater(double weight) {

        // 35 ml per kg of body weight
        double water = (weight * 35) / 1000.0;

        // Round to 1 decimal place
        water = Math.round(water * 10.0) / 10.0;

        return water;

    }

}