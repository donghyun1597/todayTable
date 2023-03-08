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
	
	
	
	
	public ArrayList<Allergy> selectAllergy(int memNo) {
		Connection conn = getConnection();
		 
		ArrayList<Allergy> memAlg = new MemberDao().selectAllergy(conn,memNo);
		
		
		close(conn);
		
		return memAlg;
		
	}
	
	
	
	public ArrayList<WishList> selectWishList(int memNo) {
		Connection conn = getConnection();
		 
		ArrayList<WishList> wishList = new MemberDao().selectWishList(conn,memNo);
		
		
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
	public int updateMember(Member m, String[] algNo, ArrayList<Allergy> memAlg) {
		Connection conn = getConnection();
		
		int result2 = 1;
		
		int result1 = new MemberDao().updateMember(conn, m);
		
		if (memAlg != null) {
			result2 = new MemberDao().deleteMemberAllergy(conn, m.getMemNo());
		}
		
		int result3 = new MemberDao().insertMemberAllergy(conn, m.getMemNo(), algNo);
		
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
		
		int total = result1 * result2 * result3;

		if (total > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return total;
	} // ... end
	
	
	public int insertMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		
		int count = new MemberDao().idCheck(conn, checkId);
		
		close(conn);
		return count;
	}
	
	public Member searchMemId(String memName, String phone) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDao().searchMemId(conn, memName, phone);
		if(member==null) {
			rollback(conn);
		}else {
			commit(conn);
		}
		
		close(conn);
		
		System.out.println("m : " + member);
		return member;
	}
	
	//비밀번호 찾기
	public Member searchMemPw(String memberId, String memberName) {
		Connection conn = getConnection();
		Member member = new MemberDao().searchMemPw(conn, memberId, memberName);
		close(conn);
		

		System.out.println("service : " + member);
		return member;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
