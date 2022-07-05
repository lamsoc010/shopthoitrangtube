package com.tubefashtion.DAO;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.User;

public class UserDao {
	public static List<User> getAllUser() {
		List<User> listUser = new ArrayList<User>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select * from users";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				User u = new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setAddress(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setPassword(rs.getString(5));
				u.setBirthday(rs.getString(6));
				u.setImage(rs.getString(7));
				u.setPhone(rs.getString(8));
				u.setCreated_at(rs.getString(9));
				u.setUpdated_at(rs.getString(10));
				listUser.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUser;
	}
	
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
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(email);
				user.setPassword(password);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void insertUser(User user) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into users (name, email, password) values (?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
