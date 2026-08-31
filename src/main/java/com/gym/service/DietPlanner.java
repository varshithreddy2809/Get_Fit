package com.gym.service;

import java.util.ArrayList;
import java.util.List;

public class DietPlanner {

    public List<String> generateDiet(String goal) {

        List<String> diet = new ArrayList<>();

        if(goal.equalsIgnoreCase("Muscle Gain")) {

            diet.add("Breakfast : Oats + Milk + 4 Eggs + Banana");
            diet.add("Mid Morning : Peanut Butter Sandwich + Apple");
            diet.add("Lunch : Rice + Chicken + Dal + Vegetables");
            diet.add("Pre Workout : Banana + Black Coffee");
            diet.add("Post Workout : Whey Protein + Banana");
            diet.add("Dinner : Rice + Fish + Salad");
            diet.add("Before Bed : Milk");

        }

        else if(goal.equalsIgnoreCase("Weight Loss")) {

            diet.add("Breakfast : Oats + Egg Whites");
            diet.add("Mid Morning : Apple");
            diet.add("Lunch : Brown Rice + Grilled Chicken + Salad");
            diet.add("Pre Workout : Black Coffee");
            diet.add("Post Workout : Whey Protein");
            diet.add("Dinner : Paneer + Vegetables");
            diet.add("Before Bed : Green Tea");

        }

        else {

            diet.add("Breakfast : Oats + Fruits");
            diet.add("Mid Morning : Mixed Nuts");
            diet.add("Lunch : Rice + Dal + Vegetables");
            diet.add("Snack : Fruit");
            diet.add("Dinner : Chicken + Vegetables");
            diet.add("Before Bed : Milk");

        }

        return diet;

    }

}