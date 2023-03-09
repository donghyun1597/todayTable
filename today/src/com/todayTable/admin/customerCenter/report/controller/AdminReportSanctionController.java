package com.todayTable.admin.customerCenter.report.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.admin.recipe.model.service.AdminRecipeService;
import com.todayTable.recipe.model.vo.Recipe;

/**
 * Servlet implementation class AdminReportSanctionController
 */
@WebServlet("/adminReport.re")
public class AdminReportSanctionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReportSanctionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String strNo = request.getParameter("rNo");
		
		strNo = strNo.substring(30);
		int rNo = Integer.parseInt(strNo);
		
		Recipe r = new AdminRecipeService().selectRecipe(rNo);
		
		request.setAttribute("r", r);
		
		
		request.getRequestDispatcher("/search.mem?searchOption=memId&searchContent=" + r.getMemId()).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
