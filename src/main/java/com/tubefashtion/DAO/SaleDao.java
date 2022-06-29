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
				s.setTime_sale(rs.getDate(4));
				s.setStatus(rs.getInt(5));
				s.setCreated_at(rs.getDate(6));
				s.setUpdated_at(rs.getDate(7));
				
				listSale.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listSale;
	}
}
