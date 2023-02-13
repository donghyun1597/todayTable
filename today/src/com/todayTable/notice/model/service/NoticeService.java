package com.todayTable.notice.model.service;

import com.todayTable.notice.model.dao.NoticeDao;
import com.todayTable.notice.model.vo.Notice;

import static com.todayTable.common.JDBCTemplate.*;

import java.util.ArrayList;

public class NoticeService {

	public ArrayList<Notice> selectNoticeList() {
		java.sql.Connection conn = getConnection();
		
		new NoticeDao().selectNoticeList(conn);
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		close(conn);
		
		return list;
	}

}