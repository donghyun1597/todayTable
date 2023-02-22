package com.todayTable.event.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.event.model.dao.EventDao;
import com.todayTable.event.model.vo.Event;

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

}
