package com.todayTable.admin.customerCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.customerCenter.model.service.AdminInquiryService;

/**
 * Servlet implementation class AdminInquiryInsertAnswerController
 */
@WebServlet("/insertAnswer.iq")
public class AdminInquiryInsertAnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryInsertAnswerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String answer = request.getParameter("answer");
		int iqNo = Integer.parseInt(request.getParameter("iqNo"));
		
		int result = new AdminInquiryService().insertAnswer(iqNo ,answer);
		
		if(result > 0) {
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
