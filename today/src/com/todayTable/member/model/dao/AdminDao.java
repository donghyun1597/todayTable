package com.todayTable.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.todayTable.member.model.vo.Member;
import com.todayTable.common.JDBCTemplate;

public class AdminDao {
	private Properties prop = new Properties();

	public AdminDao() {
		String filePath = AdminDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginAdmin(Connection conn, String adminPwd) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, adminPwd);
			
			rset = pstmt.executeQuery();
			
			
			if (rset.next()) {
				m = new Member(rset.getInt("MEM_NO")
							 , rset.getString("MEM_ID")
							 , rset.getString("MEM_PWD")
							 , rset.getString("NICKNAME")
							 , rset.getString("MEM_NAME")
							 , rset.getString("PHONE")
							 , rset.getInt("WARNING_COUNT")
							 , rset.getString("MEM_IMG"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
	} // loginAdmin end
}
