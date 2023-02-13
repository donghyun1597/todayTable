package com.todayTable.notice.model.service;

import com.todayTable.notice.model.dao.NoticeDao;
import com.todayTable.notice.model.vo.Notice;

import static com.todayTable.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class NoticeService {

	public ArrayList<Notice> selectNoticeList() {
		java.sql.Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		close(conn);
		
		return list;
	}
	
	public ArrayList<Notice> adminSelectNotice() {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().adminSelectNotice(conn);
		
		close(conn);
		
		return list;
	}

}
