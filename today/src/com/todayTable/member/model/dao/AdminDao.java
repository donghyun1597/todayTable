package com.todayTable.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.todayTable.member.model.vo.Member;
import static com.todayTable.common.JDBCTemplate.*;

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
			close(rset);
			close(pstmt);
		}
		
		return m;
	} // loginAdmin end
	
	public ArrayList<Member> selectMemberById(Connection conn, String searchContent) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Member> list = new ArrayList<Member>();
		String sql = prop.getProperty("selectMemberById");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchContent);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("mem_no"),
									rset.getString("mem_id"),
									rset.getString("nickname"),
									rset.getString("mem_name"),
									rset.getString("phone"),
									rset.getInt("warning_count")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public ArrayList<Member> selectMemberByNick(Connection conn, String searchContent) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Member> list = new ArrayList<Member>();
		
		String sql = prop.getProperty("selectMemberByNick");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchContent);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("mem_no"),
									rset.getString("mem_id"),
									rset.getString("nickname"),
									rset.getString("mem_name"),
									rset.getString("phone"),
									rset.getInt("warning_count")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
}
