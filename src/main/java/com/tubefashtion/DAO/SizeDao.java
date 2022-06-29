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
	public static List<Size> getAllSizeByIdProduct(int idProduct) {
		Connection conn = DBConnection.getJDBCConnection();
		List<Size> listSize = new ArrayList<Size>();
		String sql = "SELECT detail_size.*, size.size FROM products, size, detail_size "
				+ "WHERE products.id = detail_size.idProduct and detail_size.idSize = size.id and detail_size.idProduct = ? and size.status = 1";
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
}
