package com.gym.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class GymDBConnection {

	static Connection con = null;

	
	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// Read database configuration from environment variables
			String dbHost = System.getenv("DB_HOST") != null ? System.getenv("DB_HOST") : "localhost";
			String dbPort = System.getenv("DB_PORT") != null ? System.getenv("DB_PORT") : "3306";
			String dbName = System.getenv("DB_NAME") != null ? System.getenv("DB_NAME") : "gymmembership";
			String dbUser = System.getenv("DB_USER") != null ? System.getenv("DB_USER") : "root";
			String dbPassword = System.getenv("DB_PASSWORD") != null ? System.getenv("DB_PASSWORD") : "root";
			
			// For Aiven MySQL with SSL
			String dbUrl = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName + "?useSSL=true&serverTimezone=UTC";
			
			con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			System.out.println("Database connected successfully!");
			
		} catch (Exception e) {
			System.out.println("Database connection error: " + e);
			e.printStackTrace();
		}
		return con;
		
	}
}
