package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RecipeIngreInsertController
 */
@WebServlet("/ingreIn.re")
public class RecipeIngreInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeIngreInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int i=1;
		
		String ingreClass[] = request.getParameterValues("ingreClass");
		ArrayList<String[]> ingreList = new ArrayList<String[]>();
		
		for(int y=0;y<ingreClass.length;y++) {
			
			System.out.println(ingreClass[y]);
		}
		while(request.getParameterValues("ingre"+i)!=null) {
			ingreList.add(request.getParameterValues("ingre"+i));
			i++;
		}
		for(int j=0;j<ingreList.size();j++) {
			
			for(int t=0;t<ingreList.get(j).length;t++) {
				System.out.println(ingreList.get(j)[t]);
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
