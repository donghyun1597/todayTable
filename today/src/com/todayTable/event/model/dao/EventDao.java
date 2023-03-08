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
import com.todayTable.event.model.vo.Reply;
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

	public int searchEventCount(Connection conn, String searchOption, String searchText) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch (searchOption) {
		case "title":
			sql = prop.getProperty("searchEventTitleCount");
			break;
			
		case "content":
			sql = prop.getProperty("searchEventContentCount");
			break;
			
		case "titleContent":
			sql = prop.getProperty("searchEventTitleContentCount");
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

	public ArrayList<Event> searchEvent(Connection conn, String searchOption, String searchText, PageInfo pi) {
		ArrayList<Event> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = null;
		
		switch (searchOption) {
		case "title":
			sql = prop.getProperty("searchEventTitle");
			break;
			
		case "content":
			sql = prop.getProperty("searchEventContent");
			break;
		
		case "titleContent":
			sql = prop.getProperty("searchEventTitleContent");
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

	public int insertReply(Connection conn, Reply r) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getRefBoardNo());
			pstmt.setInt(2, Integer.parseInt(r.getReplyWriter()));
			pstmt.setString(3, r.getReplyContent());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Reply> selectReplyList(Connection conn, int boardNo) {
		ArrayList<Reply> list = new ArrayList<Reply>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Reply(rset.getInt("event_com_no"),
								   rset.getString("event_com_contents"),
								   rset.getString("nickname"),
								   rset.getString("event_com_date")
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
