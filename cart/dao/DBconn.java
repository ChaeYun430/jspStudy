package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {
	
	Connection conn = null;
	
	public DBconn() throws ClassNotFoundException, SQLException {
		try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://192.168.25.11:3306/coffee", "coffeeMarket", "2222");
		}catch(SQLException e){
			System.out.println("데이터베이스 연결에 실패했습니다.");
			e.printStackTrace();
			conn.close();
		}
	}
}