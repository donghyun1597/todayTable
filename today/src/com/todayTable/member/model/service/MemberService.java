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
	
	public ArrayList<Member> selectMemberList() {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMemberList(conn);
		
		close(conn);
		
		return list;
	}
	
	
	
	
	/**
	 * 회원 정보 수정
	 * @author sm.kim
	 * @return
	 */
	public Member updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, m.getMemId());
			
		}else {
			rollback(conn);
		}
		close(conn);
		return updateMem;
	}	//... end 
	

}
