package com.todayTable.customerCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.customerCenter.model.service.InquiryService;
import com.todayTable.customerCenter.model.vo.Inquiry;
import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class UpdateInquiryController
 */
@WebServlet("/updateInquiry.cu")
public class UpdateInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int inqNo = Integer.parseInt(request.getParameter("num"));
		String inqName = request.getParameter("inqName");
		String inqQuestion = request.getParameter("inqQuestion");
		String checkPrivate = null;
		
		if(request.getParameter("checkPrivate").equals("pri")) {
			checkPrivate = "Y";
		}else {
			checkPrivate = "N";
		}
		
		
		Inquiry i = new Inquiry();
		i.setInqName(inqName);
		i.setInqNo(inqNo);
		i.setInqQuestion(inqQuestion);
		i.setInqPrivate(checkPrivate);
		
		int result = new InquiryService().updateInquiry(i);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "수정완료");
			response.sendRedirect(request.getContextPath() + "/inquiry.cu?cpage=1");
		}else {
			request.getSession().setAttribute("alertMsg", "수정실패");
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
