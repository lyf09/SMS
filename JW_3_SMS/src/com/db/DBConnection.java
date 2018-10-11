package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBConnection {

	private static String host = "127.0.0.1";
	private static String username = "root";
	private static String password = "123456";
	private static String dbName = "jw_3-sms";
	
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://"+host+"/"+dbName+"?user="+username+"&password="+password+"&useUnicode=true&characterEncoding=utf-8");
			return conn;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public static Statement getSmt(Connection conn){
		try {
			Statement smt= conn.createStatement();
			return smt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static void closeAll(Statement smt , Connection conn){
		if(smt != null){
			try {
				smt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void closeAll(ResultSet rs, Statement smt , Connection conn){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		closeAll(smt, conn);
	}
}
