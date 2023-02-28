package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeRecommendController
 */
@WebServlet("/recommend.re")
public class RecipeRecommendController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeRecommendController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ingre = request.getParameter("ingre");
		String nation = request.getParameter("nation");
		String people = request.getParameter("people");
		String[] values = {ingre,nation,people};
		
		ArrayList<Recipe> list = new RecipeService().selectMainThumbnailList(values);
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
