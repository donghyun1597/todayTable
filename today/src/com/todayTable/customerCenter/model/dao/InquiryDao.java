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

	public ArrayList<Inquiry> selectInquiryList(Connection conn) {
		ArrayList<Inquiry> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectInquiryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
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

}
