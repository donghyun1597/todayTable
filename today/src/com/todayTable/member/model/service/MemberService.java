package com.todayTable.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.member.model.dao.MemberDao;
import com.todayTable.member.model.vo.Allergy;
import com.todayTable.member.model.vo.Member;
import com.todayTable.member.model.vo.WishList;

import static com.todayTable.common.JDBCTemplate.*;

public class MemberService {
	
	public Member loginMember(String memId,String memPwd) {
		Connection conn = getConnection();
		
		Member member = new MemberDao().loginMember(conn,memId,memPwd);
		
		if(member==null) {
			rollback(conn);
		}else {
			commit(conn);
		}
		close(conn);
		
		return member;
		
	}
	
	public Allergy selectAllergy(int memNo) {
		Connection conn = getConnection();
		 
		Allergy memAlg = new MemberDao().selectAllergy(conn,memNo);
		
		if(memAlg==null) {
			rollback(conn);
		}else {
			commit(conn);
		}
		close(conn);
		
		return memAlg;
		
	}
	public WishList selectWishList(int memNo) {
		Connection conn = getConnection();
		 
		WishList wishList = new MemberDao().selectWishList(conn,memNo);
		
		if(wishList==null) {
			rollback(conn);
		}else {
			commit(conn);
		}
		close(conn);
		
		return wishList;
		
	}
	
	public ArrayList<Member> selectMember() {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMember(conn);
		
		close(conn);
		
		return list;
	}
	

}
