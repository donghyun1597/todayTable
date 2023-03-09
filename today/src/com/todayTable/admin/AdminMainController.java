package com.todayTable.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.customerCenter.model.service.AdminInquiryService;
import com.todayTable.admin.customerCenter.report.model.service.AdminReportService;
import com.todayTable.admin.event.model.service.AdminEventService;
import com.todayTable.admin.main.model.vo.Count;
import com.todayTable.admin.member.model.service.AdminService;

/**
 * Servlet implementation class AdminMainController
 */
@WebServlet("/adminMain.ad")
public class AdminMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Count c = new Count();
		int memCount = new AdminService().countMember();
		int reportCount = new AdminReportService().countReport();
		int inquiryCount = new AdminInquiryService().countInquiry();
		int eventCount = new AdminEventService().countEvent();
		int recipeReportCount = new AdminReportService().countRecipeReport();
		int commentReportCount = new AdminReportService().countCommentReport();
		
		
		c.setMemCount(memCount);
		c.setReportCount(reportCount);
		c.setInquiryCount(inquiryCount);
		c.setEventCount(eventCount);
		c.setRecipeReportCount(recipeReportCount);
		c.setCommentReportCount(commentReportCount);
		
		request.setAttribute("c", c);
		
		RequestDispatcher view = request.getRequestDispatcher("views/admin/adminIndex.jsp");
		view.forward(request, response);
			
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
