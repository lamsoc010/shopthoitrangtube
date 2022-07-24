package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Size;

public class SizeDao {
	public static List<Size> getAllSize() {
		Connection conn = DBConnection.getJDBCConnection();
		List<Size> listSize = new ArrayList<Size>();
		String sql = "SELECT detail_size.*, size.size FROM products, size, detail_size "
				+ "WHERE products.id = detail_size.idProduct and detail_size.idSize = size.id and size.status = 1 and detail_size.quantity > 0";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Size s = new Size();
				s.setId(rs.getInt(1));
				s.setIdProduct(rs.getInt(2));
				s.setIdSize(rs.getInt(3));
				s.setQuantity(rs.getInt(4));
				s.setStatus(rs.getInt(5));
				s.setSize(rs.getString(6));
				listSize.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listSize;
		
	}
	
	public static List<Size> getAllSizeByIdProduct(int idProduct) {
		Connection conn = DBConnection.getJDBCConnection();
		List<Size> listSize = new ArrayList<Size>();
		String sql = "SELECT detail_size.*, size.size FROM products, size, detail_size "
				+ "WHERE products.id = detail_size.idProduct and detail_size.idSize = size.id and detail_size.idProduct = ? and size.status = 1 and detail_size.quantity > 0";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idProduct);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Size s = new Size();
				s.setId(rs.getInt(1));
				s.setIdProduct(rs.getInt(2));
				s.setIdSize(rs.getInt(3));
				s.setQuantity(rs.getInt(4));
				s.setStatus(rs.getInt(5));
				s.setSize(rs.getString(6));
				listSize.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listSize;
	}
	
	public static int insertDetailSize(Size s) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into detail_size (idProduct, idSize, quantity, status) values (?,?,?,?)";
		int id = -1;
		String[] returnId = { "BATCHID" };
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql, returnId);
			ps.setInt(1, s.getIdProduct());
			ps.setInt(2, s.getIdSize());
			ps.setInt(3, s.getQuantity());
			ps.setInt(4, s.getStatus());
			int rsUpdate = ps.executeUpdate();
			try (ResultSet rs = ps.getGeneratedKeys()) {
			    if (rs.next()) {
			    	id = rs.getInt(1);
			    } 
			    rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}

	public static int updateDetailSize(Size s) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update detail_size set quantity = ? where id = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, s.getQuantity());
			ps.setInt(2, s.getId());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s.getId();
	}
}
