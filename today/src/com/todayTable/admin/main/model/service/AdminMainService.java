package com.todayTable.admin.main.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.admin.main.model.dao.AdminMainDao;
import com.todayTable.member.model.vo.MainImg;

public class AdminMainService {
	
	public ArrayList<MainImg> selectMainpic() {
		Connection conn = getConnection();
		
		ArrayList<MainImg> list = new AdminMainDao().selectMainpic(conn);
		
		close(conn);
		
		return list;
	}
	
	public int insertPic(String fullName) {
		Connection conn = getConnection();
		
		int result = new AdminMainDao().insertPic(conn, fullName);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}

}
