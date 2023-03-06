package com.todayTable.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.member.model.service.MemberService;
import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class MemberSearchPwController
 */
@WebServlet("/searchMemPw.me")
public class MemberSearchPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSearchPwController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.인코딩
		request.setCharacterEncoding("utf-8");
		//2.변수저장
		String memberId = request.getParameter("userId");
		String memberName = request.getParameter("userName");
		//3.비지니스로직
		MemberService service = new MemberService();
		Member member = service.searchMemPw(memberId,memberName);
		//4.뷰 처리
		System.out.println("sevlet : " + member);
		if(member != null) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/member/searchPw.jsp");
			request.setAttribute("members", member);
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "정확한 정보를 입력해 주세요!");
			request.setAttribute("loc", "/");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
			rd.forward(request, response);
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
