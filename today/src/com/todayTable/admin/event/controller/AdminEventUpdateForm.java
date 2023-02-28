package com.todayTable.admin.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.event.model.service.AdminEventService;
import com.todayTable.event.model.service.EventService;
import com.todayTable.event.model.vo.Event;

/**
 * Servlet implementation class AdminEventUpdateForm
 */
@WebServlet("/updateForm.ev")
public class AdminEventUpdateForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEventUpdateForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int eventNo = Integer.parseInt(request.getParameter("num"));
		
		Event ev = new AdminEventService().selectEvent(eventNo);
		
		request.setAttribute("ev", ev);
		
		request.getRequestDispatcher("views/admin/adminUpdateEvent.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
