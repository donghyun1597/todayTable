package com.todayTable.member.model.service;

import java.sql.Connection;
import java.util.HashMap;


import com.todayTable.member.model.dao.MemberDao;

import static com.todayTable.common.JDBCTemplate.*;

public class MemberService {
	
	public HashMap<String, Object> loginMember(String memId,String memPwd) {
		Connection conn = getConnection();
		
		HashMap<String, Object> memberInfo = new MemberDao().loginMember(conn,memId,memPwd);
		
		if(memberInfo.get("member")==null) {
			rollback(conn);
		}else {
			commit(conn);
		}
		close(conn);
		
		return memberInfo;
		
	}

}
