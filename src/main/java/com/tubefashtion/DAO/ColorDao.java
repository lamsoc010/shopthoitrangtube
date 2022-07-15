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
	public static List<Color> getAllColorByIdSize(String size) {
		Connection conn = DBConnection.getJDBCConnection();
		List<Color> listColor = new ArrayList<Color>();
		String sql = "SELECT detail_sizecolor.*, size.size, color.color from size, color, detail_sizecolor "
				+ "WHERE size.id = detail_sizecolor.idSize and detail_sizecolor.idColor = color.id and size.size = ? and color.status = 1";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, size);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Color c = new Color();
				c.setId(rs.getInt(1));
				c.setIdSize(rs.getInt(2));
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
}
