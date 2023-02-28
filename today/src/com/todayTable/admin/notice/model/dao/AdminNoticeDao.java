package com.todayTable.admin.notice.model.dao;

import static com.todayTable.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.todayTable.notice.model.vo.Notice;

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
	
	public int updateNotice(Connection conn, Notice n) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("updateNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, n.getNoticeName());
			pstmt.setString(2, n.getNoticeContents());
			pstmt.setString(3, n.getNoticeClsfc());
			pstmt.setInt(4, n.getNoticeNo());
			System.out.println(n.getNoticeClsfc());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteNotice(Connection conn, int noticeNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteNotice2");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, noticeNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
