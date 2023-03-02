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
				Inquiry i = null;
				list.add(new Inquiry(rset.getInt("inq_no"),
									 rset.getInt("mem_no"),
									 rset.getString("inq_name"),
									 rset.getString("inq_question"),
									 rset.getDate("inq_date"),
									 rset.getString("inq_answer"),
									 rset.getString("inq_processing"),
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
}
