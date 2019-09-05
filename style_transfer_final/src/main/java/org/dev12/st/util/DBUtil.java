package org.dev12.st.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	private static final String connectionPath = "jdbc:postgresql://localhost:5432/style_manager";
	private static final String DBUser = "postgres";
	private static final String DBPswd = "wssyt555";

	private static Connection c = null; // connection对象
	private static Statement stmt = null; // SQL语句执行

	public static void main(String args[]) {
		Connection c = null;
		try {
			Class.forName("org.postgresql.Driver");
			c = DriverManager.getConnection(connectionPath, DBUser, DBPswd);
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getClass().getName() + ": " + e.getMessage());
			System.exit(0);
		}
		System.out.println("Opened database successfully");
	}

	public static Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			c = DriverManager.getConnection(connectionPath, DBUser, DBPswd);
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
