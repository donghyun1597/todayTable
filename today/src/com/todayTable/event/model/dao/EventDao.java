package com.todayTable.event.model.dao;

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
import com.todayTable.event.model.vo.Event;
import com.todayTable.notice.model.dao.NoticeDao;
import com.todayTable.notice.model.vo.Notice;

public class EventDao {
	
	private Properties prop = new Properties();
	
	public EventDao() {
		try {
			prop.loadFromXML(new FileInputStream(NoticeDao.class.getResource("/db/sql/event-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Event> selectEventList(Connection conn, PageInfo pi) {
		
		ArrayList<Event> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
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

}
