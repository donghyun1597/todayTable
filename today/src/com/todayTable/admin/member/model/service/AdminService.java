package com.todayTable.admin.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.admin.member.model.dao.AdminDao;
import com.todayTable.member.model.vo.Member;
import com.todayTable.notice.model.dao.NoticeDao;

import static com.todayTable.common.JDBCTemplate.*;

public class AdminService {

	public Member loginAdmin(String adminPwd) {
		Connection conn = getConnection();
		
		Member m = new AdminDao().loginAdmin(conn, adminPwd);
		
		close(conn);
		
		return m;
	}
	
	public ArrayList<Member> selectMemberById(String searchContent){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminDao().selectMemberById(conn, searchContent);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Member> selectMemberByNick(String searchContent){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminDao().selectMemberByNick(conn, searchContent);
		
		close(conn);
		
		return list;
	}
	
	public int countMember() {
		Connection conn = getConnection();
		
		int memCount = new AdminDao().countMember(conn);
		
		close(conn);
		
		return memCount;
	}
	
	public int deleteMember(int mNo) {
		Connection conn = getConnection();
		
		int result = new AdminDao().deleteMember(conn, mNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int increaseWarningCount(int mNo) {
		Connection conn = getConnection();
		
		int result = new AdminDao().increaseWarningCount(conn, mNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
