package com.todayTable.recipe.controller;

import java.io.IOException;

import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.recipe.model.service.RecipeService;

/**
 * Servlet implementation class RecipeDetailView
 */
@WebServlet("/recipeView.rc")
public class RecipeDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDetailView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int recipeNo = Integer.parseInt(request.getParameter("recipeNo"));
		
		HashMap<String, Object> list = new RecipeService().selectRecipeDetail(recipeNo);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/recipe/recipeDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}