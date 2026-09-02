    -- Gym Membership Database Schema
    -- Create this in your Aiven MySQL database

    -- Users table
    CREATE TABLE IF NOT EXISTS users (
        id INT PRIMARY KEY AUTO_INCREMENT,
        username VARCHAR(50) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        email VARCHAR(100),
        full_name VARCHAR(100),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- Memberships table
    CREATE TABLE IF NOT EXISTS memberships (
        id INT PRIMARY KEY AUTO_INCREMENT,
        user_id INT NOT NULL,
        membership_type VARCHAR(50),
        start_date DATE,
        end_date DATE,
        status VARCHAR(20),
        FOREIGN KEY (user_id) REFERENCES users(id)
    );

    -- Workouts table
    CREATE TABLE IF NOT EXISTS workouts (
        id INT PRIMARY KEY AUTO_INCREMENT,
        user_id INT NOT NULL,
        workout_date DATE,
        exercise_type VARCHAR(100),
        duration_minutes INT,
        calories_burned INT,
        FOREIGN KEY (user_id) REFERENCES users(id)
    );

    -- Fitness plans table
    CREATE TABLE IF NOT EXISTS fitness_plans (
        id INT PRIMARY KEY AUTO_INCREMENT,
        user_id INT NOT NULL,
        plan_type VARCHAR(50),
        goal VARCHAR(100),
        start_date DATE,
        end_date DATE,
        FOREIGN KEY (user_id) REFERENCES users(id)
    );
    -- CORRECT: Main member registration table (matches GymDAO.java code)
    CREATE TABLE IF NOT EXISTS gymmember (
        username VARCHAR(50) PRIMARY KEY,
        firstname VARCHAR(100) NOT NULL,
        lastname VARCHAR(100) NOT NULL,
        email VARCHAR(100),
        phone VARCHAR(15),
        age INT,
        gender VARCHAR(10),
        plan VARCHAR(50),
        password VARCHAR(255) NOT NULL
    );

    -- Workouts table (for workout plan storage)
    CREATE TABLE IF NOT EXISTS workout (
        username VARCHAR(50) PRIMARY KEY,
        age INT,
        gender VARCHAR(10),
        height DOUBLE,
        weight DOUBLE,
        goal VARCHAR(100),
        experience VARCHAR(50),
        days_per_week VARCHAR(10),
        workout_place VARCHAR(100),
        workout_duration VARCHAR(50),
        injury VARCHAR(255),
        FOREIGN KEY (username) REFERENCES gymmember(username)
    );
