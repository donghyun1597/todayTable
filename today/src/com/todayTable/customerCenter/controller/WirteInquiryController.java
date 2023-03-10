package com.todayTable.customerCenter.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.customerCenter.model.service.InquiryService;
import com.todayTable.customerCenter.model.vo.Inquiry;
import com.todayTable.member.model.vo.Member;
import com.todayTable.notice.model.service.NoticeService;

/**
 * Servlet implementation class WirteInquiry
 */
@WebServlet("/writeInquiry.cu")
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
		
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String inqName = request.getParameter("inqName");
		String inqQuestion = request.getParameter("inqQuestion");
		String checkPrivate = null;
		if(request.getParameter("checkPrivate") == null) {
			checkPrivate = "N";
		}else {
			checkPrivate = "Y";
		}
		HttpSession session = request.getSession();
		
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		
		Inquiry i = new Inquiry();
		
		i.setMemNo(memNo);
		i.setInqName(inqName);
		i.setInqQuestion(inqQuestion);
		i.setInqPrivate(checkPrivate);
		
		int result = new InquiryService().writeInquiry(i);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "등록완료");
			response.sendRedirect(request.getContextPath() + "/inquiry.cu?cpage=1");
		}else {
			request.getSession().setAttribute("alertMsg", "등록실패");
			response.sendRedirect(request.getContextPath());
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
