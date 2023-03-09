package com.todayTable.admin.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.member.model.service.AdminService;

/**
 * Servlet implementation class AdminSanctionMemberController
 */
@WebServlet("/sanction.me")
public class AdminSanctionMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSanctionMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		int warningCount = Integer.parseInt(request.getParameter("warningCount"));
		String sanction = request.getParameter("sanction");
		
		int result = 0;
		
		if(sanction.equals("delete")) {
			result = new AdminService().deleteMember(mNo);
			
			response.sendRedirect(request.getContextPath() + "/adminSelectMember.mem");
		} else if(sanction.equals("warning")) {
			result = new AdminService().increaseWarningCount(mNo);
			
			if(warningCount == 2) {
				result = new AdminService().deleteMember(mNo);
			}
			
			response.sendRedirect(request.getContextPath() + "/adminSelectMember.mem");
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
