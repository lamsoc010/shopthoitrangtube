package com.tubefashtion.DAO;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.User;

public class UserLoginDao {
	public static User checkLoginUser(String email, String password) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select * from users where email = ? and password = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				User user = new User();
				user.setEmail(email);
				user.setPassword(password);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
