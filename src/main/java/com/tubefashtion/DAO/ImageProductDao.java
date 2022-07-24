package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.ImageProduct;

public class ImageProductDao {
	public static List<ImageProduct> getListImageProductByIdProduct(int idProduct) {
		Connection conn = DBConnection.getJDBCConnection();
		List<ImageProduct> listImage = new ArrayList<ImageProduct>();
		String sql = "select * from image_product where idProduct = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idProduct);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ImageProduct i = new ImageProduct();
				i.setId(rs.getInt(1));
				i.setIdProduct(rs.getInt(2));
				i.setImage(rs.getString(3));
				i.setStatus(rs.getInt(4));
				i.setCreated_at(rs.getString(5));
				i.setUpdated_at(rs.getString(6));
				listImage.add(i);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listImage;
	}
	
	public static void insertImageProduct(ImageProduct i) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into image_product (idProduct, image, status, created_at) values (?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, i.getIdProduct());
			ps.setString(2, i.getImage());
			ps.setInt(3, i.getStatus());
			ps.setString(4, i.getCreated_at());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
