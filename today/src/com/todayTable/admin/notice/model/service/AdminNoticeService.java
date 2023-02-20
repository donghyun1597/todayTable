package com.todayTable.admin.notice.model.service;

import static com.todayTable.common.JDBCTemplate.close;
import static com.todayTable.common.JDBCTemplate.commit;
import static com.todayTable.common.JDBCTemplate.getConnection;
import static com.todayTable.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.todayTable.admin.notice.model.dao.AdminNoticeDao;
import com.todayTable.notice.model.dao.NoticeDao;

public class AdminNoticeService {

	public int deleteNotice(int[] checkInt) {
		Connection conn = getConnection();
		
		int result = new AdminNoticeDao().deleteNotice(conn, checkInt);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
