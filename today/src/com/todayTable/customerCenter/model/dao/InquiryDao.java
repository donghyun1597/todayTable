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

	public int writeInquiry(Connection conn, Inquiry i) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("wirteInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, i.getMemNo());
			pstmt.setString(2, i.getInqName());
			pstmt.setString(3, i.getInqQuestion());
			pstmt.setString(4, i.getInqPrivate());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public Inquiry selectInquiryList(Connection conn, int inquiryNo) {
		
		Inquiry i = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inquiryNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				i = new Inquiry(rset.getInt("inq_no"),
							     rset.getString("inq_name"),
							     rset.getString("inq_processing"),
							     rset.getString("mem_id"),
							     rset.getDate("inq_date"),
							     rset.getString("inq_question"),
							     rset.getString("inq_answer"),
							     rset.getString("inq_private")
							     );
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return i;
	}

	public int updateInquiry(Connection conn, Inquiry i) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateInquiry");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, i.getInqName());
			pstmt.setString(2, i.getInqQuestion());
			pstmt.setString(3, i.getInqPrivate());
			pstmt.setInt(4, i.getInqNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteInquiry(Connection conn, int inqNo) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, inqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Inquiry> searchInquiry(Connection conn, String searchOption, String searchText, PageInfo pi) {
		ArrayList<Inquiry> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch (searchOption) {
		case "title":
			sql = prop.getProperty("searchInquiryTitle");
			break;
			
		case "content":
			sql = prop.getProperty("searchInquiryContent");
			break;
		
		case "titleContent":
			sql = prop.getProperty("searchInquiryTitleContent");
			break;
		}
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			if(searchOption.equals("titleContent")) {
				pstmt.setString(1, searchText);
				pstmt.setString(2, searchText);
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
			}else {
				pstmt.setString(1, searchText);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
			}
			
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

	public int searchInquiryCount(Connection conn, String searchOption, String searchText) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		System.out.println("111111 : " + searchOption);
		
		String sql = null;
		
		switch (searchOption) {
		case "title":
			sql = prop.getProperty("searchInquiryTitleCount");
			break;
		
		case "content":
			sql = prop.getProperty("searchInquiryContentCount");
			break;
			
		case "titleContent":
			sql = prop.getProperty("searchInquiryTitleContentCount");
			break;
		}
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			if(searchOption.equals("titleContent")) {
				pstmt.setString(1, searchText);
				pstmt.setString(2, searchText);
			} else {
				pstmt.setString(1, searchText);
			}
			
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
