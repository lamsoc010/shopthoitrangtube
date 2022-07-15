package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Orders;

public class OrdersDao {
	public static List<Orders> getAllListOrders() {
		List<Orders> listOrders = new ArrayList<Orders>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select * from orders";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Orders o = new Orders();
				o.setId(rs.getInt(1));
				o.setIdInfoOrder(rs.getInt(2));
				o.setIdProduct(rs.getInt(3));
				o.setQuantity(rs.getInt(4));
				o.setColor(rs.getString(5));
				o.setSize(rs.getString(6));
				o.setPrice(rs.getFloat(7));
				o.setStatus(rs.getInt(8));
				
				listOrders.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOrders;
	}
	
	public static List<Orders> getAllListOrdersByIdInfoOrder(int idInfoOrders) {
		List<Orders> listOrders = new ArrayList<Orders>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "SELECT products.id, products.image, products.name, orders.quantity, orders.color, orders.size, orders.price, orders.status FROM orders, products"
				+ " WHERE orders.idProduct = products.id and orders.idInfoOrder = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idInfoOrders);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Orders o = new Orders();
				o.setId(rs.getInt(1));
				o.setImage(rs.getString(2));
				o.setName(rs.getString(3));
				o.setQuantity(rs.getInt(4));
				o.setColor(rs.getString(5));
				o.setSize(rs.getString(6));
				o.setPrice(rs.getFloat(7));
				o.setStatus(rs.getInt(8));
				
				listOrders.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOrders;
	}
	
	public static void insertOrders(Orders o) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into orders (idInfoOrder, idProduct, quantity, color, size, price, status) "
				+ "values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, o.getIdInfoOrder());
			ps.setInt(2, o.getIdProduct());
			ps.setInt(3, o.getQuantity());
			ps.setString(4, o.getColor());
			ps.setString(5, o.getSize());
			ps.setFloat(6, o.getPrice());
			ps.setInt(7, o.getStatus());
			
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
