package com.tubefashtion.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.tubefashtion.DB.DBConnection;
import com.tubefashtion.Model.Product;

public class ProductDao {
	public static List<Product> getAllProduct() {
		List<Product> listProduct = new ArrayList<Product>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.id = sale.idProduct";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));

				listProduct.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static List<Product> getProductPanigation(int offset, int totalPage) {
		List<Product> listProduct = new ArrayList<Product>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.id = sale.idProduct limit ?, ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, offset);
			ps.setInt(2, totalPage);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));

				listProduct.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static List<Product> getListProductSort(String sql) {
		List<Product> listProduct = new ArrayList<Product>();
		Connection conn = DBConnection.getJDBCConnection();
//		String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.? ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
//			ps.setString(1, name);
//			ps.setString(2, key);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));

				listProduct.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static List<Product> getListProductSort1(String value, String key, int offset, int size, String category) {
		List<Product> listProduct = new ArrayList<Product>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select products.*, sale.sale, sale.time_sale, (price - if(sale.sale != 'null', price*sale.sale/100, 0)) as priceSort "
				+ " from products left join sale on products.id = sale.idProduct"
				+ " where idSubCategory in"
				+ " (SELECT sub_category.id "
				+ " from sub_category  "
				+ " INNER JOIN category on sub_category.idCategory = category.id WHERE category.name = ? ) "
				+ " order by ? ? limit ? , ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, value);
			ps.setString(3, key);
			ps.setInt(4, offset);
			ps.setInt(5, size);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));

				listProduct.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static Product getProductById(int id) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.id = sale.idProduct "
				+ "where products.id = ? ";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));
				
				return p;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<Product> getProductSameIdSubCategory(int idSubCategory) {
		List<Product> listProduct = new ArrayList<Product>();
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.id = sale.idProduct "
				+ "where products.idSubCategory = ? ";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idSubCategory);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setIdProduct(rs.getString(2));
				p.setName(rs.getString(3));
				p.setRating(rs.getFloat(4));
				p.setIdSale(rs.getInt(5));
				p.setImage(rs.getString(6));
				p.setIdSubCategory(rs.getInt(7));
				p.setPrice(rs.getFloat(8));
				p.setQuantity(rs.getInt(9));
				p.setDescreption(rs.getString(10));
				p.setStatus(rs.getInt(11));
				p.setCreated_at(rs.getString(12));
				p.setUpdated_at(rs.getString(13));
				p.setSale(rs.getFloat(14));
				p.setTime_sale(rs.getString(15));

				listProduct.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProduct;
	}

	public static int insertProduct(Product p) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "insert into products (idProduct, name, image, idSubCategory, price, quantity, descreption, status, created_at)"
				+ " values (?,?,?,?,?,?,?,?,?)";
		int id = -1;
		String[] returnId = { "BATCHID" };
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql, returnId);
			ps.setString(1, p.getIdProduct());
			ps.setString(2, p.getName());
			ps.setString(3, p.getImage());
			ps.setInt(4, p.getIdSubCategory());
			ps.setFloat(5, p.getPrice());
			ps.setInt(6, p.getQuantity());
			ps.setString(7, p.getDescreption());
			ps.setInt(8, p.getStatus());
			ps.setString(9, p.getCreated_at());
			
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
	
	public static void updateProduct(Product p) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update products set quantity = ? where id = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, p.getQuantity());
			ps.setInt(2, p.getId());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void editProduct(Product p) {
		Connection conn = DBConnection.getJDBCConnection();
		String sql = "update products set name = ?, price = ?, idSubCategory = ?, descreption = ? where idProduct = ?";
		try {
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setFloat(2, p.getPrice());
			ps.setInt(3, p.getIdSubCategory());
			ps.setString(4, p.getDescreption());
			ps.setString(5, p.getIdProduct());
			int rs = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
