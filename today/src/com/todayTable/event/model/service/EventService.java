package com.todayTable.event.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.event.model.dao.EventDao;
import com.todayTable.event.model.vo.Event;
import com.todayTable.event.model.vo.Reply;
import com.todayTable.notice.model.dao.NoticeDao;
import com.todayTable.notice.model.vo.Notice;

import static com.todayTable.common.JDBCTemplate.*;

public class EventService {

	public ArrayList<Event> selectEventList(PageInfo pi) {
		java.sql.Connection conn = getConnection();
		
		ArrayList<Event> list = new EventDao().selectEventList(conn, pi);
		close(conn);
		
		return list;
	}

	public int eventSelectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new EventDao().eventSelectListCount(conn);
		
		close(conn);
		return listCount;
	}

	public Event selectEvent(int eventNo) {
		Connection conn = getConnection();
		
		Event ev = new EventDao().selectEvent(conn, eventNo);
		
		close(conn);
		
		return ev;
	}

	public int searchEventCount(String searchOption, String searchText) {
		Connection conn = getConnection();
		
		int listCount = new EventDao().searchEventCount(conn, searchOption, searchText);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Event> searchEvent(String searchOption, String searchText, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Event> list = new EventDao().searchEvent(conn, searchOption, searchText, pi);
		
		close(conn);
		
		return list;
	}

	public int insertReply(Reply r) {
		Connection conn = getConnection();
		int result = new EventDao().insertReply(conn, r);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<Reply> selectReplyList(int boardNo) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new EventDao().selectReplyList(conn, boardNo);
		
		close(conn);
		return list;
	}
}
