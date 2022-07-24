package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.Size;

public class ColorDao {
	public static List<Color> getAllColor() {
		Connection conn = DBConnection.getJDBCConnection();
		List<Color> listColor = new ArrayList<Color>();
		String sql = "SELECT detail_sizecolor.*, size.size, color.color from detail_sizecolor, detail_size, size, color"
				+ " WHERE detail_sizecolor.idDetailSize = detail_size.id and detail_size.idSize = size.id and detail_sizecolor.idColor = color.id";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Color c = new Color();
				c.setId(rs.getInt(1));
				c.setIdDetailSize(rs.getInt(2));
				c.setIdColor(rs.getInt(3));
				c.setQuantity(rs.getInt(4));
				c.setStatus(rs.getInt(5));
				c.setSize(rs.getString(6));
				c.setColor(rs.getString(7));
				listColor.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listColor;
		
	}
	
	public static List<Color> getAllColorByIdSize(String size, int idProduct) {
		Connection conn = DBConnection.getJDBCConnection();
		List<Color> listColor = new ArrayList<Color>();
		String sql = "SELECT detail_sizecolor.*, size.size, color.color from detail_sizecolor, detail_size, size, color"
				+ " WHERE detail_sizecolor.idDetailSize = detail_size.id and detail_size.idSize = size.id and detail_sizecolor.idColor = color.id"
				+ " and size.size = ? and detail_size.idProduct = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, size);
			ps.setInt(2, idProduct);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Color c = new Color();
				c.setId(rs.getInt(1));
				c.setIdDetailSize(rs.getInt(2));
				c.setIdColor(rs.getInt(3));
				c.setQuantity(rs.getInt(4));
				c.setStatus(rs.getInt(5));
				c.setSize(rs.getString(6));
				c.setColor(rs.getString(7));
				listColor.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listColor;
		
	}

	public static void updateDetailSizeColor(Color c) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update detail_sizecolor set quantity = ? where id = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getQuantity());
			ps.setInt(2, c.getId());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
