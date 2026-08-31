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
			String dbUrl = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName + "?useSSL=true&serverTimezone=UTC&connectTimeout=10000&socketTimeout=10000";
			
			System.out.println("[GymDBConnection] Attempting connection to: " + dbHost + ":" + dbPort + "/" + dbName);
			
			con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			
			System.out.println("[GymDBConnection] Database connected successfully!");
			
		} catch (ClassNotFoundException e) {
			System.out.println("[GymDBConnection] MySQL Driver not found: " + e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("[GymDBConnection] Database connection error: " + e.getMessage());
			e.printStackTrace();
		}
		return con;
		
	}
}
