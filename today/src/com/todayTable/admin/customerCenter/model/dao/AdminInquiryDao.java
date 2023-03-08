package com.todayTable.admin.customerCenter.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.vo.Inquiry;

public class AdminInquiryDao {
	private Properties prop = new Properties();
	
	public AdminInquiryDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminInquiryDao.class.getResource("/db/sql/inquiry-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Inquiry> selectInquiryList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Inquiry> list = new ArrayList<Inquiry>();
		
		String sql = prop.getProperty("selectInquiryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Inquiry(rset.getInt("inq_no"),
									 rset.getString("inq_name"),
									 rset.getString("inq_processing"),
									 rset.getString("user_id"),
									 rset.getDate("inq_date"),
									 rset.getString("inq_question"),
									 rset.getString("inq_answer"),
									 rset.getString("inq_private")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public Inquiry selectInquiry(Connection conn, int iNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Inquiry iq = new Inquiry();
		
		String sql = prop.getProperty("selectInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, iNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				iq.setInqNo(rset.getInt("inq_no"));
				iq.setInqName(rset.getString("inq_name"));
				iq.setInqProcessing(rset.getString("inq_processing"));
				iq.setMemId(rset.getString("mem_id"));
				iq.setInqDate(rset.getDate("inq_date"));
				iq.setInqQuestion(rset.getString("inq_question"));
				iq.setInqAnswer(rset.getString("inq_answer"));
				iq.setInqPrivate(rset.getString("inq_private"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return iq;
	}
	
	public int insertAnswer(Connection conn, int iqNo, String answer) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertAnswer");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, answer);
			pstmt.setInt(2, iqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateAnswer(Connection conn, int iqNo, String iqContent) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("updateAnswer");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, iqContent);
			pstmt.setInt(2, iqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int deleteInquiry(Connection conn, int iqNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, iqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	public int inquirySelectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inquirySelectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
			close(pstmt);
		}
		
		return listCount;
	}
}
