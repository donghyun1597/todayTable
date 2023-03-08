package com.todayTable.admin.customerCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.customerCenter.model.service.AdminInquiryService;
import com.todayTable.customerCenter.model.vo.Inquiry;

/**
 * Servlet implementation class AdminInquiryUpdateAnswerController
 */
@WebServlet("/adminUpdate.iq")
public class AdminInquiryUpdateAnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryUpdateAnswerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int iqNo = Integer.parseInt(request.getParameter("iqNo"));
		String iqContent = request.getParameter("answer");
		
		
		int result = new AdminInquiryService().updateAnswer(iqNo, iqContent);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "답변 수정 완료");
			response.sendRedirect(request.getContextPath() + "/detail.iq?num=" + iqNo);
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
