package daoimpl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import vo.MenuList;
import dbcon.DbConnect;

public class MenuListDaoImpl {
	public boolean addMenuList(MenuList m) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			System.out.println(m.getId());
			System.out.println(m.getContent());
			String sql = "insert into menu (id,content) values('"+m.getId()+"','"+m.getContent()+"')";
			st.execute(sql);
			rs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return rs;
	}
	public boolean delMenuList(MenuList m) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			String sql = "delete from menu where ";
			if(!m.getId().equals("")){
				sql += "id = '"+m.getId()+"'";
			}
			st.execute(sql);
			rs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return rs;
	}

	public List<MenuList> getAllMenuLists() {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		List<MenuList> lg = new ArrayList();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from menu";
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				MenuList g = new MenuList();
				g.setId(rs.getString(1));
				g.setContent(rs.getString(2));
				lg.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return lg;
	}

	public boolean updateMenuList(MenuList m) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		String sql = "update menu set content='"+m.getContent()+"' where id='"+m.getId()+"'";
		boolean brs = false;
		try {
			Statement st = conn.createStatement();
			st = conn.createStatement();
			st.execute(sql);
			brs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbConnect.getInstance("test").release(conn);
		return brs;
	}
}
