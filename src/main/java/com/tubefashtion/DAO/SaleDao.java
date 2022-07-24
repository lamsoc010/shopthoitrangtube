package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Sale;

public class SaleDao {
	public static List<Sale> getAllSale() {
		List<Sale> listSale = new ArrayList<Sale>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select * from sale";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Sale s = new Sale();
				s.setId(rs.getInt(1));
				s.setIdProduct(rs.getInt(2));
				s.setSale(rs.getFloat(3));
				s.setTime_sale(rs.getString(4));
				s.setStatus(rs.getInt(5));
				s.setCreated_at(rs.getString(6));
				s.setUpdated_at(rs.getString(7));
				
				listSale.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listSale;
	}
	
	public static int insertSale(Sale s) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into sale (idProduct, sale, time_sale, status, created_at) values(?,?,?,?,?)";
		int id = -1;
		String[] returnId = { "BATCHID" };
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql, returnId);
			ps.setInt(1, s.getIdProduct());
			ps.setFloat(2, s.getSale());
			ps.setString(3, s.getTime_sale());
			ps.setInt(4, s.getStatus());
			ps.setString(5, s.getCreated_at());
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

	public static void editSale(Sale s) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update sale set sale = ?, time_sale = ? where idProduct = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setFloat(1, s.getSale());
			ps.setString(2, s.getTime_sale());
			ps.setInt(3, s.getIdProduct());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

