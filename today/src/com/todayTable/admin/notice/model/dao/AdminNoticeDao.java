package com.todayTable.admin.notice.model.dao;

import static com.todayTable.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class AdminNoticeDao {
	
	private Properties prop = new Properties();
	
	public AdminNoticeDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminNoticeDao.class.getResource("/db/sql/notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int deleteNotice(Connection conn, int[] checkInt) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteNotice");
		for (int i = 0; i < checkInt.length; i++) {
			sql += "?,";
		}
		sql = sql.substring(0, sql.length() - 1) + ")";
		
		System.out.println(sql);
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			for(int i = 1; i <= checkInt.length; i++) {
				pstmt.setInt(i, checkInt[i-1]);
			}
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		 return result;
	}

}
