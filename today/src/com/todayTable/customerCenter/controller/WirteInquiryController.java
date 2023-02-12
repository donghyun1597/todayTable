package com.todayTable.customerCenter.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class WirteInquiry
 */
@WebServlet("/wirteInquiry.me")
public class WirteInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WirteInquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/customerCenter/wirteInquiry.jsp");
		view.forward(request, response);
		
		
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 세션 선언?
		// HttpSession session = request.getSession();
		
		// 변수 설정
		// String memNo = session.getAttribute("memNo");
		String inqName = request.getParameter("inqName");
		String inqQuestion = request.getParameter("inqQuestion");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
