package com.todayTable.member.model.service;

import java.sql.Connection;

import com.todayTable.member.model.dao.AdminDao;
import com.todayTable.member.model.vo.Member;
import com.todayTable.common.JDBCTemplate;

public class AdminService {

	public Member loginAdmin(String adminPwd) {
		Connection conn = JDBCTemplate.getConnection();
		
		Member m = new AdminDao().loginAdmin(conn, adminPwd);
		
		JDBCTemplate.close(conn);
		
		return m;
	}
}
