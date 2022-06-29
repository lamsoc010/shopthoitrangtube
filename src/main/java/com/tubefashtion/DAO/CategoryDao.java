package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Category;
import com.tubefashtion.Model.SubCategory;

public class CategoryDao {
	public static List<Category> getAllCategory() {
		Connection conn = DBConnection.getJDBCConnection();
		List<Category> listCategory = new ArrayList<Category>();
		String sql = "select * from category";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Category c = new Category();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setStatus(rs.getInt(3));
				c.setCreated_at(rs.getDate(4));
				c.setUpdated_at(rs.getDate(5));
				listCategory.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listCategory;
	}
	
	public static List<SubCategory> getAllSubCategory() {
		Connection conn = DBConnection.getJDBCConnection();
		List<SubCategory> listSubCategory = new ArrayList<SubCategory>();
		String sql = "select * from sub_category";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				SubCategory c = new SubCategory();
				c.setId(rs.getInt(1));
				c.setIdCategory(rs.getInt(2));
				c.setName(rs.getString(3));
				c.setStatus(rs.getInt(4));
				c.setCreated_at(rs.getDate(5));
				c.setUpdated_at(rs.getDate(6));
				listSubCategory.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listSubCategory;
	}
}
