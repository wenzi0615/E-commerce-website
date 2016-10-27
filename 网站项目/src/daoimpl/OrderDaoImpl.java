package daoimpl;

import vo.Order;
import dao.OrderDao;
import dbcon.DbConnect;

import java.sql.*;

public class OrderDaoImpl implements OrderDao{

	public boolean CreateOrder(Order o) {
		// TODO Auto-generated method stub
		Connection conn = DbConnect.getInstance("test").getConnection();
		boolean rs = false;
		try {
			Statement st = conn.createStatement();
			String sql = "insert into orders(number,name,address,mail,phone,total_price) " +
					"values('"+o.getNumber()+"','"+o.getName()+"','"+o.getAddress()+"','"+o.getMail()+"','"+o.getPhone()+"','"+o.getTotal_price()+"')";
			st.execute(sql);
			rs = true;
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
