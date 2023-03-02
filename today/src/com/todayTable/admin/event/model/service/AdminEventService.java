package com.todayTable.admin.event.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.admin.event.model.dao.AdminEventDao;
import com.todayTable.event.model.vo.Event;

public class AdminEventService {

	public ArrayList<Event> selectEventList() {
		Connection conn = getConnection();
		
		ArrayList<Event> list = new AdminEventDao().selectEventList(conn);
		
		close(conn);
		
		return list;
	}
	
	public Event selectEvent(int eventNo) {
		Connection conn = getConnection();
		
		Event ev = new AdminEventDao().selectEvent(conn, eventNo);
		
		close(conn);
		
		return ev;
	}
	
	public int closeEvent(int eventNo) {
		Connection conn = getConnection();
		
		int result = new AdminEventDao().closeEvent(conn, eventNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}
	
	public int updateEvent(Event ev) {
		Connection conn = getConnection();
		
		int result = new AdminEventDao().updateEvent(conn, ev);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int deleteEvent(int eventNo) {
		Connection conn = getConnection();
		
		int result = new AdminEventDao().deleteEvent(conn, eventNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}
}
