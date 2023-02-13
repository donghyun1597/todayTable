package com.todayTable.event.model.service;

import java.util.ArrayList;

import com.todayTable.event.model.dao.EventDao;
import com.todayTable.event.model.vo.Event;

import static com.todayTable.common.JDBCTemplate.*;

public class EventService {

	public ArrayList<Event> selectEventList() {
		java.sql.Connection conn = getConnection();
		
		ArrayList<Event> list = new EventDao().selectEventList(conn);
		close(conn);
		
		return list;
	}

}
