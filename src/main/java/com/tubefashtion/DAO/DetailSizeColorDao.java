package com.tubefashtion.DAO;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.DetailSizeColor;

public class DetailSizeColorDao {
	public static DetailSizeColor insertDetailSizeColor(DetailSizeColor d) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into detail_sizecolor (idDetailSize, idColor, quantity, status) values (?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, d.getIdDetailSize());
			ps.setInt(2, d.getIdColor());
			ps.setInt(3, d.getQuantity());
			ps.setInt(4, d.getStatus());
			int rs = ps.executeUpdate();
			return d;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
