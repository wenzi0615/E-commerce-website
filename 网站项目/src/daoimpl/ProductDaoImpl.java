package daoimpl;

import java.util.List;
import vo.Product;
import dao.ProductDao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import dbcon.DbConnect;
import vo.ProductDetails;

public class ProductDaoImpl implements ProductDao {

	public boolean addGood(Product g) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			/*String number,name,price,comment,imgpath,category;
			int sale;*/
			String sql = "insert into products (number,name,price,comment,imgpath,categories) values('"+g.getNumber()+"','"+g.getName()+"','"+g.getPrice()+"','"+g.getComment()+"','"+g.getImgpath()+"','"+g.getCategory()+"')";
			rs = st.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return rs;
	}
	public boolean addProductDetails(ProductDetails pd) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			String sql = "insert into productdetails(number,name,quantity,manufacturer,style,date,categories) values('"+pd.getNumber()+"','"+pd.getName()+"','"+
			pd.getQuantity()+"','"+pd.getManufacturer()+"','"+pd.getStyle()+"','"+pd.getDate().toString()+"','"+pd.getCategory()+"')";
			st.execute(sql);
			rs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return rs;
	}

	public boolean delGood(Product g) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			String sql = "delete from products where ";
			if(!g.getNumber().equals("")){
				sql += "number = '"+g.getNumber()+"' and ";
			}
			if(!g.getName().equals("")){
				sql += "name = '"+g.getName()+"'";
			}
			else{
				sql = sql.substring(0, sql.length()-4);
			}
			rs = st.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return rs;
	}

	public List<Product> getAllGoods() {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		List<Product> lg = new ArrayList();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from products";
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				Product g = new Product();
				g.setNumber(rs.getString(1));
				g.setName(rs.getString(2));
				g.setPrice(rs.getString(3));
				//g.setSale(Integer.parseInt(rs.getString(4)));
				g.setComment(rs.getString(4));
				g.setImgpath(rs.getString(5));
				g.setCategory(rs.getString(6));
				lg.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return lg;
	}

	public boolean updateGood(Product g) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "select * from products where number = '"+g.getNumber()+"'";
		Statement st;
		Product newPro = new Product();
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				newPro.setNumber(rs.getString(1));
				newPro.setName(rs.getString(2));
				newPro.setPrice(rs.getString(3));
				newPro.setComment(rs.getString(4));
				newPro.setImgpath(rs.getString(5));
				newPro.setCategory(rs.getString(6));
			}
			if(g.getCategory()!=null && !g.getCategory().trim().equals("")){
				newPro.setCategory(g.getCategory());
			}
			if(g.getComment()!=null && !g.getComment().trim().equals("")){
				newPro.setComment(g.getComment());
			}
			if(g.getImgpath()!=null && !g.getImgpath().trim().equals("")){
				newPro.setImgpath(g.getImgpath());
			}
			if(g.getName()!=null && !g.getName().trim().equals("")){
				newPro.setName(g.getName());
			}
			if(g.getPrice()!=null && !g.getPrice().trim().equals("")){
				newPro.setPrice(g.getPrice());
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		sql = "update products set name='"+newPro.getName()+"',price='"+newPro.getPrice()+"',comment='"+newPro.getComment()+"',imgpath='"+newPro.getImgpath()+"' where number='"+newPro.getNumber()+"'";
		boolean brs = true;
		try {
			st = conn.createStatement();
			brs = st.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return brs;
	}
	public boolean updateProductDetails(ProductDetails pd){
		Connection conn = DbConnect.getInstance("test").getConnection();
		
		String sql = "select * from productdetails where number = '"+pd.getNumber()+"'";
		Statement st;
		ProductDetails newPro = new ProductDetails();
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				newPro.setNumber(rs.getString(1));
				newPro.setName(rs.getString(2));
				newPro.setQuantity(Integer.parseInt(rs.getString(3)));
				newPro.setManufacturer(rs.getString(4));
				newPro.setStyle(rs.getString(5));
				newPro.setDate(Date.valueOf(rs.getString(6)));
				newPro.setCategory(rs.getString(7));
			}
			if(pd.getCategory()!=null && !pd.getCategory().trim().equals("")){
				newPro.setCategory(pd.getCategory());
			}
			if(pd.getManufacturer()!=null && !pd.getManufacturer().trim().equals("")){
				newPro.setManufacturer(pd.getManufacturer());
			}
			if(pd.getName()!=null && !pd.getName().trim().equals("")){
				newPro.setName(pd.getName());
			}
			if(pd.getQuantity() < 0){
				newPro.setQuantity(pd.getQuantity());
			}
			if(pd.getStyle()!=null && !pd.getStyle().trim().equals("")){
				newPro.setStyle(pd.getStyle());
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		sql = "update productdetails set name='"+newPro.getName()+"',quantity='"+newPro.getQuantity()+"',manufacturer='"+newPro.getManufacturer()+"' where number='"+newPro.getNumber()+"' and style='"+newPro.getStyle()+"'";
		boolean brs = false;
		try {
			st = conn.createStatement();
			brs = st.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		System.out.println("details"+brs);
		return brs;
	}
	
	public Product getProductByNumber(String number){
		Product p = new Product();
		Connection conn = DbConnect.getInstance("test").getConnection();
		List<ProductDetails> lpd = new ArrayList();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from products where number='"+number+"'";
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				
				p.setNumber(rs.getString(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setComment(rs.getString(4));
				p.setImgpath(rs.getString(5));
				p.setCategory(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return p;
	}
	
	public List<ProductDetails> getProductDetailsByNumber(String number) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		List<ProductDetails> lpd = new ArrayList();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from productdetails where number='"+number+"'";
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				ProductDetails g = new ProductDetails();
				g.setNumber(rs.getString(1));
				g.setName(rs.getString(2));
				g.setQuantity(Integer.parseInt(rs.getString(3)));
				g.setManufacturer(rs.getString(4));
				g.setStyle(rs.getString(5));
				//g.setDate(Date.valueOf(rs.getString(6)));
				g.setCategory(rs.getString(7));
				lpd.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return lpd;
	}
	
}
