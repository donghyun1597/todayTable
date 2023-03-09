package com.todayTable.admin.customerCenter.report.model.dao;

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
import com.todayTable.customerCenter.model.vo.Report;

public class AdminReportDao {

	Properties prop = new Properties();
	
	public AdminReportDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminReportDao.class.getResource("/db/sql/report-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int reportSelectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("reportSelectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
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
	
	public ArrayList<Report> selectReportList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Report> list = new ArrayList<Report>();
		
		String sql = prop.getProperty("selectReportList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Report(
							rset.getInt("rep_no"),
							rset.getString("mem_id"),
							rset.getString("rep_contents"),
							rset.getDate("rep_date"),
							rset.getString("rep_clsfc"),
							rset.getString("rep_processing")
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
	
	public Report selectReport(Connection conn, int rNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Report r = null;
		
		String sql = prop.getProperty("selectReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new Report(rset.getInt("rep_no"),
									  rset.getString("mem_id"),
									  rset.getString("rep_contents"),
									  rset.getDate("rep_date"),
									  rset.getString("rep_clsfc"),
									  rset.getString("rep_processing"),
									  rset.getString("rep_url")
						);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
	
	public int countReport(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int reportCount = 0;
		
		String sql = prop.getProperty("countReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				reportCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return reportCount;
	}
}
