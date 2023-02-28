package com.todayTable.admin.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.event.model.service.AdminEventService;
import com.todayTable.event.model.vo.Event;

/**
 * Servlet implementation class AdminEventUpdateController
 */
@WebServlet("/update.ev")
public class AdminEventUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEventUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int eventNo = Integer.parseInt(request.getParameter("num"));
		
		String title = request.getParameter("eventTitle");
		String content = request.getParameter("eventContent");
		
		Event ev = new Event();
		
		ev.setEventNo(eventNo);
		ev.setEventName(title);
		ev.setEventContents(content);
		
		int result = new AdminEventService().updateEvent(ev);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/detail.ev?num=" + eventNo);
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
