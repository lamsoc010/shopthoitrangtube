package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.WishList;

public class WishListDao {
	static SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	public static List<WishList> getAllWishList() {
		Connection conn = DBConnection.getJDBCConnection();
		List<WishList> listWishlist = new ArrayList<WishList>();
		String sql = "SELECT wishlist.id, wishlist.idProduct, products.image, products.name, products.rating, products.price , sale.sale, sale.time_sale "
				+ " from wishlist, products LEFT JOIN sale on products.idSale = sale.id"
				+ " WHERE wishlist.idProduct = products.id";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				WishList w = new WishList();
				w.setId(rs.getInt(1));
				w.setIdProduct(rs.getInt(2));
				w.setImage(rs.getString(3));
				w.setName(rs.getString(4));
				w.setRating(rs.getFloat(5));
				w.setPrice(rs.getFloat(6));
				w.setSale(rs.getFloat(7));
				w.setTime_sale(rs.getString(8));
				
				listWishlist.add(w);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listWishlist;
		
	}
	
	public static WishList getWishListByIdProduct(int idProduct) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "SELECT products.id, products.image, products.name, products.rating, products.price , sale.sale, sale.time_sale \r\n"
				+ "from products LEFT JOIN sale on products.idSale = sale.id \r\n"
				+ "WHERE products.id = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idProduct);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				WishList w = new WishList();
				w.setIdProduct(rs.getInt(1));
				w.setImage(rs.getString(2));
				w.setName(rs.getString(3));
				w.setRating(rs.getFloat(4));
				w.setPrice(rs.getFloat(5));
				w.setSale(rs.getFloat(6));
				w.setTime_sale(rs.getString(7));
				
				return w;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static void insertWishList(WishList w) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into wishlist (idProduct, idUser, created_at, updated_at) values(?, ?, ?, ?)";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, w.getIdProduct());
			ps.setInt(2, w.getIdUser());
			ps.setString(3, w.getCreated_at());
			ps.setString(4, w.getUpdated_at());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
