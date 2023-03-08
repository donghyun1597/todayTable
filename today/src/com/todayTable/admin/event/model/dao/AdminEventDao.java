package com.todayTable.admin.event.model.dao;

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
import com.todayTable.event.model.vo.Event;

public class AdminEventDao {
	
	private Properties prop = new Properties();
	
	public AdminEventDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminEventDao.class.getResource("/db/sql/event-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Event> selectEventList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Event> list = new ArrayList<Event>();
		
		String sql = prop.getProperty("selectEventList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Event(rset.getInt("event_no"),
						   rset.getString("event_processing"),
						   rset.getString("event_name"),
						   rset.getDate("event_date")
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
	
	public Event selectEvent(Connection conn, int eventNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Event ev = new Event();
		
		String sql = prop.getProperty("selectEvent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, eventNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ev.setEventNo(rset.getInt("event_no"));
				ev.setEventName(rset.getString("event_name"));
				ev.setEventContents(rset.getString("event_contents"));
				ev.setEventDate(rset.getDate("event_date"));
				ev.setEventProcessing(rset.getString("event_processing"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return ev;
	}
	
	public int closeEvent(Connection conn, int eventNo) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("closeEvent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, eventNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateEvent(Connection conn, Event ev) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("updateEvent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ev.getEventName());
			pstmt.setString(2, ev.getEventContents());
			pstmt.setInt(3, ev.getEventNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int deleteEvent(Connection conn, int eventNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteEvent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, eventNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertEvent(Connection conn, String EventTitle, String EventContent) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertEvent");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, EventTitle);
			pstmt.setString(2, EventContent);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int eventSelectListCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("eventSelectListCount");
		
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
}
