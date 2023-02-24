package com.todayTable.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	// 싱글톤 패턴 적용하여 jdbc 템플릿 작성 ( 한번 생성하고 계속 꺼내쓰는 방식!!!)
	
	// 1. Connection 객체 생성 후 해당 Connection 객체를 반환해주는 getConnection 메소드
	public static Connection getConnection() {
		
		Connection conn = null;
		Properties prop = new Properties();
		String filePath = JDBCTemplate.class.getResource("/db/driver/driver.properties").getPath();
		
		// ojdbc6.jar
		// WEB-INF 안에 lib 폴더에 복사하기!!!
		
		try {
			prop.load(new FileInputStream(filePath));
			
			// jdbc dirver 등록
			Class.forName(prop.getProperty("driver"));
			// 접속하고자 하는 db의 url, 계정명, 비번 제시해서 Connection 객체 생성
			conn = DriverManager.getConnection(prop.getProperty("url"),
												prop.getProperty("username"),
												prop.getProperty("password"));
			conn.setAutoCommit(false);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-genera ted catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	
	// 2_1. Connection 객체 전달받아서 commit 시켜주는 commit 메소드
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				
				conn.commit();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	// 2_2. Connection 객체 전달받아서 rollback 시켜주는 rollback 메소드
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				
				conn.rollback();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	// 3_1. Connection 객체 전달받아서 반납시켜주는 close 메소드
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	// 3_2. Statement 객체 전달받아서 반납시켜주는 close 메소드
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				
				stmt.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	// 3_3. ResultSet 객체 전달받아서 반납시켜주는 close 메소드
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				
				rset.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
