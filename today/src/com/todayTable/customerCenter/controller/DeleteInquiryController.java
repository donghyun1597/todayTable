package com.todayTable.customerCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.customerCenter.model.service.InquiryService;
import com.todayTable.customerCenter.model.vo.Inquiry;

/**
 * Servlet implementation class DeleteInquiryController
 */
@WebServlet("/deleteInquiry.cu")
public class DeleteInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteInquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inqNo = Integer.parseInt(request.getParameter("deleteNum"));
		
		int result = new InquiryService().deleteInquiry(inqNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제완료");
			response.sendRedirect(request.getContextPath() + "/inquiry.cu?cpage=1");
		}else {
			request.getSession().setAttribute("alertMsg", "삭제실패");
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
