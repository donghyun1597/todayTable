package com.todayTable.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyPageContoller
 */
@WebServlet("/myPage.me")
public class MyPageContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageContoller() {
        super();
    }

    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 전에 url 쳐서 들어온 경우...
		// 로그인 전 요청시 => 메인페이지 응답, alert 띄우기
		// 로그인 후 요청시 => 마이페이지 응답
		HttpSession session = request.getSession();
		
		// 로그인 했는지 확인 필요
		if(session.getAttribute("loginUser") == null) {// 로그인 전에 들어옴
			session.setAttribute("alertMsg", "로그인 후 이용 가능한 서비스 입니다.");
			response.sendRedirect(request.getContextPath());
			
		} else {// 로그인 후에 들어옴
			RequestDispatcher view = request.getRequestDispatcher("views/member/myPage.jsp");
			view.forward(request, response);
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
