package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.InfoOrder;
import com.tubefashtion.Model.Orders;

public class InfoOrderDao {
	public static List<InfoOrder> getAllListOrders() {
		List<InfoOrder> listInfor = new ArrayList<InfoOrder>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select info_order.*, count(orders.id) as totalProduct from info_order, orders WHERE orders.idInfoOrder = info_order.id";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				InfoOrder i = new InfoOrder();
				i.setId(rs.getInt(1));
				i.setIdUser(rs.getInt(2));
				i.setName(rs.getString(3));
				i.setAddress(rs.getString(4));
				i.setPhone(rs.getString(5));
				i.setMessage(rs.getString(6));
				i.setStatus(rs.getInt(7));
				i.setTotal(rs.getInt(8));
				i.setCreated_at(rs.getString(9));
				i.setTotalProduct(rs.getInt(10));
				listInfor.add(i);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listInfor;
	}
	
	public static int insertInfoOrder(InfoOrder i) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into info_order (idUser, name, address, phone, message, status, total, created_at) "
				+ "values(?,?,?,?,?,?,?,?) ";
		int idInfo = -1;
		String[] returnId = { "BATCHID" };
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql, returnId);
			ps.setInt(1, i.getIdUser());
			ps.setString(2, i.getName());
			ps.setString(3, i.getAddress());
			ps.setString(4, i.getPhone());
			ps.setString(5, i.getMessage());
			ps.setInt(6, i.getStatus());
			ps.setFloat(7, i.getTotal());
			ps.setString(8, i.getCreated_at());
			int affectedRows = ps.executeUpdate();
			try (ResultSet rs = ps.getGeneratedKeys()) {
			    if (rs.next()) {
			    	idInfo = rs.getInt(1);
			    } 
			    rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return idInfo;
	}
	
	public static int getIdAfterInsert() {
		Connection conn = DBConnection.getJDBCConnection();
		int id = 0;
		String sql = "SELECT LAST_INSERT_ID()";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				id = rs.getInt(1);
			}
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
}
