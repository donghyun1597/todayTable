package com.todayTable.admin.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.event.model.service.AdminEventService;

/**
 * Servlet implementation class AdminEventInsertController
 */
@WebServlet("/insert.ev")
public class AdminEventInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEventInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String eventTitle = request.getParameter("eventTitle");
		String eventContent = request.getParameter("eventContent");
		
		int result = new AdminEventService().insertEvent(eventTitle, eventContent);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "이벤트 등록 완료");
			response.sendRedirect(request.getContextPath() + "/adminEvent.ev?cpage=1");
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
