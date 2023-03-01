package com.todayTable.admin.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.admin.event.model.service.AdminEventService;

/**
 * Servlet implementation class AdminEventDeleteController
 */
@WebServlet("/adminDelete.ev")
public class AdminEventDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEventDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eventNo = Integer.parseInt(request.getParameter("num"));
		
		int result = new AdminEventService().deleteEvent(eventNo);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			
			session.setAttribute("alertMsg", "삭제가 완료되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/adminEvent.ev");
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
