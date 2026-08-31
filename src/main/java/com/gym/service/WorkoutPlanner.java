package com.gym.service;

import java.util.ArrayList;
import java.util.List;

import com.gym.model.WorkoutModel;
import com.gym.service.plans.MaintainFitnessPlanner;
import com.gym.service.plans.MuscleGainPlanner;
import com.gym.service.plans.WeightLossPlanner;

public class WorkoutPlanner {

    public List<WorkoutDay> generateWorkout(WorkoutModel wm) {

        if (wm.getGoal().equalsIgnoreCase("Muscle Gain")) {

            MuscleGainPlanner planner = new MuscleGainPlanner();
            return planner.generate(wm);

        }

        else if (wm.getGoal().equalsIgnoreCase("Weight Loss")) {

            WeightLossPlanner planner = new WeightLossPlanner();
            return planner.generate(wm);

        }

        else if (wm.getGoal().equalsIgnoreCase("Maintain Fitness")) {

            MaintainFitnessPlanner planner = new MaintainFitnessPlanner();
            return planner.generate(wm);

        }

        return new ArrayList<>();

    }

}