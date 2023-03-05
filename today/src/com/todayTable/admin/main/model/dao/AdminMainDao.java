package com.todayTable.admin.main.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.todayTable.common.JDBCTemplate.*;
import com.todayTable.member.model.vo.MainImg;

public class AdminMainDao {

	private Properties prop = new Properties();
	public AdminMainDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMainDao.class.getResource("/db/sql/main-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<MainImg> selectMainpic(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMainPic");
		
		ArrayList<MainImg> list = new ArrayList<MainImg>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				MainImg mi = new MainImg();
				
				mi.setMainImgNo(rset.getInt("MAINIMG_NO"));
				mi.setMainImgImg(rset.getString("MAINIMG_IMG"));
				
				list.add(mi);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int insertPic(Connection conn, String fullName) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertPic");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fullName);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
