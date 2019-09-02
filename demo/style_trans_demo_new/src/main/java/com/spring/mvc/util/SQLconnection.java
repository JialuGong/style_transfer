package com.spring.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLconnection {
	private static Connection c = null; 				// ���Ӷ���
	private static Statement stmt = null;				// SQL���ִ��
	
	public static void main(String args[]) {	      
		Connection c = null;	      
		try {	        
			Class.forName("org.postgresql.Driver");	         
			c = DriverManager	            
					.getConnection("jdbc:postgresql://localhost:5432/style_manager",	            
							"postgres", "wssyt555");	     
			} catch (Exception e) {	         
				e.printStackTrace();	         
				System.err.println(e.getClass().getName()+": "+e.getMessage());	         
				System.exit(0);	      }	      
		System.out.println("Opened database successfully");	   
		}
	
	
	public static Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			c = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/style_manager",
				            "postgres", "wssyt555");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}

	public static boolean save(String sql) {
		boolean flag = false;
		 try {
			stmt = c.createStatement();
			stmt.executeUpdate(sql);
			flag = true;
		} catch (SQLException e1) {
			e1.printStackTrace();
			flag = false;
		}
		closeConnection();
		return flag;
	}
	
	private static void closeConnection() {
		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
         try {
			c.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
     }
	
	public static boolean delete(String sql) {
		boolean flag = false;
		 try {
			stmt = c.createStatement();
			stmt.executeUpdate(sql);
			flag = true;
		} catch (SQLException e1) {
			e1.printStackTrace();
			flag = false;
		}
		 closeConnection();
		return flag;
	}
	
	public static boolean update(String sql) {
		boolean flag = false;
		 try {
			stmt = c.createStatement();
			stmt.executeUpdate(sql);
			flag = true;
		} catch (SQLException e1) {
			e1.printStackTrace();
			flag = false;
		}
		 closeConnection();
		return flag;
	}
}
