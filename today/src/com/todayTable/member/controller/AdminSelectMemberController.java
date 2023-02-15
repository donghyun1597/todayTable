package com.todayTable.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.member.model.service.AdminService;
import com.todayTable.member.model.service.MemberService;
import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class AdminSelectMemberController
 */
@WebServlet("/search.mem")
public class AdminSelectMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSelectMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String searchOp = request.getParameter("searchOption");
		String searchContent = request.getParameter("searchContent");
		ArrayList<Member> list = null;
		if(searchOp.equals("memId")) {
			list = new AdminService().selectMemberById(searchContent);
		} else {
			list = new AdminService().selectMemberByNick(searchContent);
		}
		System.out.println(list);
		request.setAttribute("list", list);
		
		
		
		request.getRequestDispatcher("views/admin/adminSelectMember.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
