package com.todayTable.admin.customerCenter.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.customerCenter.report.model.service.AdminReportService;
import com.todayTable.customerCenter.model.vo.Report;

/**
 * Servlet implementation class AdminReportDetailViewFormController
 */
@WebServlet("/detail.re")
public class AdminReportDetailViewFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReportDetailViewFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int rNo = Integer.parseInt(request.getParameter("num"));
		
		Report r = new AdminReportService().selectReport(rNo);
		
		request.setAttribute("r", r);
		
		if(r != null) {
			request.getRequestDispatcher("views/admin/adminReportDetailView.jsp").forward(request, response);
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
