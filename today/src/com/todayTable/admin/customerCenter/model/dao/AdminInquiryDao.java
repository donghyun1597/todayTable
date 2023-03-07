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
	
	public ArrayList<Inquiry> selectInquiryList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Inquiry> list = new ArrayList<Inquiry>();
		
		String sql = prop.getProperty("adminSelectInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Inquiry(rset.getInt("inq_no"),
									 rset.getString("inq_name"),
									 rset.getString("inq_processing"),
									 rset.getString("mem_id"),
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
}
