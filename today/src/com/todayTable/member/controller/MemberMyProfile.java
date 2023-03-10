package com.todayTable.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class MemberMyProfile
 */
@WebServlet("/myProfile.me")
public class MemberMyProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberMyProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		String memPwd = m.getMemPwd();	// loginUser의 비밀번호 값
		String checkPwd = request.getParameter("checkPwd");	// jsp에서의 checkpwd값 가져오기
		
		if(memPwd.equals(checkPwd)) {	// 성공
			// 회원정보 수정페이지로 가는거 (기존)
			request.getRequestDispatcher("views/member/mypageProfile.jsp").forward(request, response);
		}else {	// 실패
			session.setAttribute("alertMsg", "비밀번호를 잘못 입력하셨습니다. 다시 확인하세요.");
			response.sendRedirect(request.getContextPath() + "/check.me");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
