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
 * Servlet implementation class AdminInquiryUpdateAnswerFormController
 */
@WebServlet("/adminUpdateForm.iq")
public class AdminInquiryUpdateAnswerFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryUpdateAnswerFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String answer = request.getParameter("answer");
		int iqNo = Integer.parseInt(request.getParameter("num"));
		
		Inquiry iq = new AdminInquiryService().selectInquiry(iqNo);
		
		request.setAttribute("iq", iq);
		
		request.getRequestDispatcher("views/admin/adminInquiryUpdateAnswerView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
