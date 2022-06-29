package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.WishList;

public class WishListDao {
	static SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	public static List<WishList> getAllWishList() {
		Connection conn = DBConnection.getJDBCConnection();
		List<WishList> listWishlist = new ArrayList<WishList>();
		String sql = "select * from wishlist";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				WishList w = new WishList();
				w.setId(rs.getInt(1));
				w.setIdProduct(rs.getInt(2));
				w.setCreated_at(rs.getString(3));
				w.setUpdated_at(rs.getString(4));
				
				listWishlist.add(w);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listWishlist;
		
	}
	
	public static void insertWishList(WishList w) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into wishlist (idProduct, created_at, updated_at) values(?, ?, ?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, w.getIdProduct());
			ps.setString(2, w.getCreated_at());
			ps.setString(3, w.getUpdated_at());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
