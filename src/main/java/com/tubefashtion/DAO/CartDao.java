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
		String sql = "SELECT cart.*, products.name, products.image FROM `cart`, products WHERE cart.idProduct = products.id";
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
				c.setCreated_at(rs.getString(9));
				c.setUpdated_at(rs.getString(10));
				c.setName(rs.getString(11));
				c.setImage(rs.getString(12));
				listCart.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listCart;
	}
	
	public static void insertCart(Cart c) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into cart (idProduct, idUser, size, color, quantity, price, total, created_at, updated_at) "
				+ " values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getIdProduct());
			ps.setInt(2, c.getIdUser());
			ps.setString(3, c.getSize());
			ps.setString(4, c.getColor());
			ps.setInt(5, c.getQuantity());
			ps.setFloat(6, c.getPrice());
			ps.setFloat(7, c.getTotal());
			ps.setString(8, c.getCreated_at());
			ps.setString(9, c.getUpdated_at());
			
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void updatedCart(Cart c) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update cart set quantity = ?, total = ? where idProduct = ? and size = ? and color = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getQuantity());
			ps.setFloat(2, c.getTotal());
			ps.setInt(3, c.getIdProduct());
			ps.setString(4, c.getSize());
			ps.setString(5, c.getColor());
			
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
