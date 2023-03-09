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
									rset.getString("mem_img"),
									rset.getString("mem_status"));
				
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
	
	
	
	
	public ArrayList<Allergy> selectAllergy(Connection conn,int memNo) {
		ArrayList<Allergy> memAlg = new ArrayList<Allergy>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberAllergy");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Allergy a = new Allergy();
				a.setAlgNo(rset.getString("alg_no"));
				a.setAlgName(rset.getString("alg_name"));
				
				memAlg.add(a);
				
				
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
	
	
	
	public ArrayList<WishList> selectWishList(Connection conn,int memNo) {
		ArrayList<WishList> wishList = new ArrayList<WishList>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectWishList");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				WishList w = new WishList();
				w.setMemNo(rset.getInt("mem_no"));
				w.setRecipeNo(rset.getInt("recipe_no"));
				wishList.add(w);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return wishList;
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
			
			pstmt.setString(1, m.getMemPwd());
			pstmt.setString(2, m.getNickName());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getMemId());
			
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
	
	
	
	
	
	
	public int deleteMemberAllergy(Connection conn, int memNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMemberAllergy");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}
	
	
	
	
	
	
	
	
	public int insertMemberAllergy(Connection conn, int memNo, String[] algNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMemberAllergy");
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(algNo!=null) {
				for(int i=0; i<algNo.length; i++) {
					
					pstmt.setInt(1, memNo);
					pstmt.setString(2, algNo[i]);
		
					result += pstmt.executeUpdate();
				}
			}else {
				System.out.println("algNo안됨??");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
				
	}
	
	public int insertMember(Connection conn, Member m) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPwd());
			pstmt.setString(3, m.getNickName());
			pstmt.setString(4, m.getMemName());
			pstmt.setString(5, m.getPhone());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	public int idCheck(Connection conn, String checkId) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}

	public Member searchMemId(Connection conn, String memName, String phone) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchMemberId");
		Member member = null;
		
//		System.out.println(memName);
//		System.out.println(phone);
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memName);
			pstmt.setString(2, phone);

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				member = new Member(rset.getString("mem_id"),
									rset.getString("mem_name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
	}	
//		System.out.println("dao : " + member);	
		return member;
	}
	
	//비밀번호찾기 (분실시)
	public Member searchMemPw(Connection conn, String memId, String memName, String phone) {
	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchMemberPw");
		Member member = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memName);
			pstmt.setString(3, phone);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				member = new Member(rset.getString("mem_id"),
									rset.getString("mem_pwd"),
									rset.getString("mem_name"),
									rset.getString("phone"));

			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
	}	
		System.out.println("dao : " + member);
		return member;
	}
	

	
	
	
	
	/**
	 * 마이페이지 회원 탈퇴
	 * @param conn
	 * @param memId
	 * @param memPwd
	 * @return
	 */
	public int deleteMem(Connection conn, String memId) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMem");
		
		System.out.println("dao" + result);
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}			
		return result;
	}
	
	
}
