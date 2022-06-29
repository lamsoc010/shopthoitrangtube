package com.tubefashtion.DB;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;


public class DBConnection {
	public static Connection getJDBCConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shopthoitrangtube";
			String user = "root";
			String password = "";
			conn = (Connection) DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
