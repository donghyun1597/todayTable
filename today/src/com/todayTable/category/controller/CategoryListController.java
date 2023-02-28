package com.todayTable.category.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.todayTable.category.model.CategoryService;
import com.todayTable.category.model.vo.CategoryIngredient;
import com.todayTable.category.model.vo.CategoryNation;

/**
 * Servlet implementation class CategoryListController
 */
@WebServlet("/clist.ca")
public class CategoryListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<CategoryIngredient> ingerList = new CategoryService().selectCategoryIngredientList();
		ArrayList<CategoryNation> nationList = new CategoryService().selectCategoryNationList();
		ArrayList<ArrayList> list = new ArrayList<ArrayList>();
		list.add(ingerList);
		list.add(nationList);
		System.out.println("asdasdjkhasd123213");
		request.setAttribute("list", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		System.out.println(list);
//		response.setContentType("application/json; charset=utf-8");
//		new Gson().toJson(list,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
