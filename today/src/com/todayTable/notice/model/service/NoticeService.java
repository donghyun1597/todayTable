package com.todayTable.notice.model.service;

import com.todayTable.common.model.vo.PageInfo;
import com.todayTable.notice.model.dao.NoticeDao;
import com.todayTable.notice.model.vo.Notice;

import static com.todayTable.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class NoticeService {

	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		java.sql.Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn, pi);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Notice> adminSelectNotice(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().adminSelectNotice(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public int insertNotice(String noticeTitle, String noticeContent, String checkEmerge) {
		Connection conn = getConnection();
		
		int result = new NoticeDao().insertNotice(conn, noticeTitle, noticeContent, checkEmerge);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int noticeSelectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new NoticeDao().noticeSelectListCount(conn);
		
		close(conn);
		return listCount;
	}
	
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		System.out.println(noticeNo + "d");
		close(conn);
		
		return n;
	}

}
