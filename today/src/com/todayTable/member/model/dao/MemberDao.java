package com.todayTable.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.todayTable.common.JDBCTemplate.*;

import com.todayTable.member.model.vo.Allergy;
import com.todayTable.member.model.vo.Member;
import com.todayTable.member.model.vo.WishList;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		String filePath = Member.class.getResource("/db/sql/member-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	public Member loginMember(Connection conn,String memId,String memPwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		Member member = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member(rset.getInt("mem_no"),
									rset.getString("mem_id"),
									rset.getString("mem_pwd"),
									rset.getString("nickname"),
									rset.getString("mem_name"),
									rset.getString("phone"),
									rset.getInt("warning_count"),
									rset.getString("mem_img"));
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return member;
		
	}
	
	
	
	
	public Allergy selectAllergy(Connection conn,int memNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberAllergy");
		Allergy memAlg = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				memAlg = new Allergy(rset.getString("alg_no"),
									rset.getString("alg_name"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return memAlg;
	}
	
	
	
	public WishList selectWishList(Connection conn,int memNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectWishList");
		WishList wish = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				wish = new WishList(rset.getInt("mem_no"),rset.getInt("recipe_no"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return wish;
	}
	
	
	
	

	public ArrayList<Member> selectMemberList(Connection conn) {
		ArrayList<Member> list = new ArrayList<Member>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMemberList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(
							rset.getInt("mem_no"),
							rset.getString("mem_id"),
							rset.getString("nickname"),
							rset.getString("mem_name"),
							rset.getString("phone"),
							rset.getInt("warning_count")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
	/**
	 * 회원정보 수정
	 * @author sm.kim
	 * @return
	 */
	public int updateMember(Connection conn, Member m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			// 이거 별 별별
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getNickName());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getAlgName());
			pstmt.setString(5, m.getMemId());
			
			// 실행
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
	
	
	
	/**
	 * 회원정보 수정
	 * @author sm.kim
	 * @return
	 */
	public Member selectMember(Connection conn, String MemId) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, MemId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				m = new Member(rset.getInt("memNo")
							, rset.getString("memId")
							, rset.getString("memPwd")
							, rset.getString("nickName")
							, rset.getString("memName")
							, rset.getString("phone")
							, rset.getInt("warningCount")
							, rset.getString("memImg")
							, rset.getString("memStatus"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return m;
				
	}
	
	
	
	
	
	
	
	
}
