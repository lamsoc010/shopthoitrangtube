package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Cart;

public class CartDao {
	public static List<Cart> getAllListCart() {
		Connection conn = DBConnection.getJDBCConnection();
		List<Cart> listCart = new ArrayList<Cart>();
		String sql = "select * from cart";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				Cart c = new Cart();
				c.setId(rs.getInt(1));
				c.setIdProduct(rs.getInt(2));
				c.setIdUser(rs.getInt(3));
				c.setSize(rs.getString(4));
				c.setColor(rs.getString(5));
				c.setQuantity(rs.getInt(6));
				c.setPrice(rs.getFloat(7));
				c.setTotal(rs.getFloat(8));
				c.setCreated_at(rs.getString(8));
				c.setUpdated_at(rs.getString(8));
				listCart.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listCart;
	}
}
