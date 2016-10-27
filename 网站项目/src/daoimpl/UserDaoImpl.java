package daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.UserDao;
import vo.User;
import dbcon.DbConnect;

public class UserDaoImpl implements UserDao{

	public String addUser(User u) {
			Connection con = DbConnect.getInstance("test").getConnection();
			try {
				Statement st = con.createStatement();
				String sql = "insert into user(username,password,mail) values('"
						+ u.getName() + "','" + u.getPassword() + "','" + u.getMail() + "')";
				System.out.println(sql);
				int i = st.executeUpdate(sql);
				if (i != 1)
					return "添加失败!";
				else
					return "";
			} catch (SQLException e) {
				e.printStackTrace();
				return "错误" + e.toString();
			}
	}

	public List<User> findAllUser(){
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "select * from user ";
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(rs == null){
			
			return null;
		}
		List<User> users = new ArrayList();
		System.out.println(users.size());
		try{
			while(rs.next()){
				User u = new User();
				u.setName(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setMail(rs.getString(3));
				users.add(u);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}finally{
			DbConnect.getInstance("test").release(conn);
		}
		return users ;
	}

	public User findUserByName(String name) {
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "select * from user where username = ?";
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			Statement st = conn.createStatement();
			ps=  conn.prepareStatement(sql);
			ps.setObject(1, name);
			rs = ps.executeQuery();
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(rs == null){
			return null;
		}
		
		User u = new User();
		try{	
			while(rs.next()){
				
				u.setName(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setMail(rs.getString(3));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DbConnect.getInstance("test").release(conn);
		}
		return u ;
	}

	public boolean updateUser(User u) {
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "update user set password = ? where username = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setObject(1, u.getPassword());
			ps.setObject(2, u.getName());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		
		return true ;
	}

	public String deleteUserByName(String username) {
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "delete from user where username = ?";
		PreparedStatement ps = null;
		try {
			ps =  conn.prepareStatement(sql);
			ps.setObject(1, username);
			System.out.println("|||||||||||"+sql+"|||||||||");
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
		finally{
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		DbConnect.getInstance("test").release(conn);
		
		return "success";
	}
}
