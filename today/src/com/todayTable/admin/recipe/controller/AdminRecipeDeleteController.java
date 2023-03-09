package com.todayTable.admin.recipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.recipe.model.service.AdminRecipeService;

/**
 * Servlet implementation class AdminRecipeDeleteController
 */
@WebServlet("/adminDelete.rc")
public class AdminRecipeDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRecipeDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rNo = Integer.parseInt(request.getParameter("rNo"));
		String loginUser = request.getParameter("loginUser");
		int result = new AdminRecipeService().deleteRecipe(rNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제가 완료되었습니다.");
			
			if(loginUser.equals("admin")) {
				response.sendRedirect(request.getContextPath() + "/adminNotice.no?cpage=1");
			} else {
				response.sendRedirect(request.getContextPath());
			}
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
