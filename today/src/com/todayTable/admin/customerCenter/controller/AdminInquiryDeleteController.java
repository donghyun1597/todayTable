package com.todayTable.admin.customerCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.customerCenter.model.service.AdminInquiryService;

/**
 * Servlet implementation class AdminInquiryDeleteController
 */
@WebServlet("/adminDelete.iq")
public class AdminInquiryDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquiryDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int iqNo = Integer.parseInt(request.getParameter("num"));
		
		int result = new AdminInquiryService().deleteInquiry(iqNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "문의사항 삭제 완료");
			response.sendRedirect(request.getContextPath() + "/adminInquiryForm.iq?cpage=1");
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
