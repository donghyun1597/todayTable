package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.todayTable.common.model.RecipeImageRenamePolicy;
import com.todayTable.recipe.model.vo.CookingOrder;

/**
 * Servlet implementation class RecipeInsertController
 */
@WebServlet("/insert.rc")
public class RecipeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 1_1 전송용량제한
			int maxSize = 10 * 1024 * 1024;
			System.out.println("파일저장");
			// 1_2. 저장시킬 폴더의 물리적인 경로
			String savePath = request.getSession().getServletContext().getRealPath("resources/test_img/");
//			MultipartRequest multiRequest =(MultipartRequest)request;
//			System.out.println(multiRequest.getParameter("file0"));
			// 2. 전달된 파일 업로드
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new RecipeImageRenamePolicy());
			System.out.println(multiRequest.getParameter("recipeName"));
			System.out.println(multiRequest.getParameter("recipeTag"));
			System.out.println(multiRequest.getParameter("c_theme_no"));
			System.out.println(multiRequest.getParameter("c_tool_no"));
			System.out.println(multiRequest.getParameter("c_ingre_no"));
			System.out.println(multiRequest.getParameter("c_step_no"));
			System.out.println(multiRequest.getParameter("c_kind_no"));
			System.out.println(multiRequest.getParameter("c_nat_no"));
			System.out.println(multiRequest.getParameter("cok_portion"));
			System.out.println(multiRequest.getParameter("cok_time"));
			System.out.println(multiRequest.getParameter("cok_degree"));
			//3. db에 기록할 값 뽑기
			//Board insert
			System.out.println(multiRequest.getOriginalFileName("file0"));
			
			int ingreNum = 1;
			while(multiRequest.getParameterValues("ingre"+ingreNum)!=null) {
				System.out.println(multiRequest.getParameterValues("ingre"+ingreNum));
				ingreNum++;
				
			}
			System.out.println(multiRequest.getParameterValues("ingreClass"));
			String recipeOrder[] =  multiRequest.getParameterValues("recipeOrder");
			ArrayList<CookingOrder> cList = new ArrayList<CookingOrder>();
			for(int i=0;i<recipeOrder.length;i++) {
				System.out.println(recipeOrder[i]);
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
