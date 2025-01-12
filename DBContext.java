package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
private static Connection conn;
	
	public static Connection getConnection() {
		String user = "root";
		String pass = "nam05012003";
		String url = "jdbc:mysql://localhost:3306/websitebangiay";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,pass);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
//	public static void main(String[] args) {
//		if(getConnection()!=null) {
//			System.out.println("Ket noi thanh cong");
//		}else {
//			System.out.println("Ket noi that bai");
//		}
//	}
}
