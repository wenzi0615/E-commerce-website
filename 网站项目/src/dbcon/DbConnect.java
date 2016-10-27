package dbcon;
import java.sql.*;
import java.util.*;
public class DbConnect {
	public static final String driver="com.mysql.jdbc.Driver";
	public static final String url="jdbc:mysql://127.0.0.1:3306/";
	public static final String username="root";
	public static final String password="root";
	private static DbConnect instance=null;
	private static String dbname;
	public final static int poolsize=10;
	Vector<Connection> pool;
	public static DbConnect getInstance(String name){
		dbname=name;
		if(instance==null)
			instance=new DbConnect();
		return instance;
	}
	public Connection getConnection(){
		if(pool.size()==0)
			addConnection();
		Connection con=pool.get(0);
		pool.remove(0);
		return con;
	}
	public void release(Connection con){
		pool.add(con);
	}
	private void addConnection(){
		try {
			Class.forName(driver);
			for(int i=0;i<poolsize;i++){
				Connection con=DriverManager.getConnection(url+dbname,username,password);
				if(con!=null)
					pool.add(con);
				else
					break;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private DbConnect(){
		pool=new Vector<Connection>();
		addConnection();
	}
}
