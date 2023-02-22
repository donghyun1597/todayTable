package com.todayTable.customerCenter.model.dao;

import static com.todayTable.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.customerCenter.model.vo.Inquiry;
import com.todayTable.notice.model.dao.NoticeDao;

public class InquiryDao {
	
	private Properties prop = new Properties();
	
	public InquiryDao() {
		try {
			prop.loadFromXML(new FileInputStream(NoticeDao.class.getResource("/db/sql/inquiry-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Inquiry> selectInquiryList(Connection conn, PageInfo pi) {
		ArrayList<Inquiry> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
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
									rset.getString("inq_private")
									));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int inquirySelectListCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inquirySelectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}

}
