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
import com.todayTable.category.model.vo.Category;
import com.todayTable.common.model.RecipeImageRenamePolicy;
import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.CookingOrder;
import com.todayTable.recipe.model.vo.Recipe;

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
			String savePath = request.getSession().getServletContext().getRealPath("resources/recipe_img/");
//			MultipartRequest multiRequest =(MultipartRequest)request;
//			System.out.println(multiRequest.getParameter("file0"));
			// 2. 전달된 파일 업로드
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new RecipeImageRenamePolicy());
			Recipe r = new Recipe();
			r.setRecipeName(multiRequest.getParameter("recipeName"));
			r.setRecipeTag(multiRequest.getParameter("recipeTag"));
			r.setRecipeDifficulty(multiRequest.getParameter("cok_degree"));
			r.setRecipePerson(Integer.parseInt(multiRequest.getParameter("cok_portion")));
			r.setRecipeTime(Integer.parseInt(multiRequest.getParameter("cok_time")));
			r.setMemNo(Integer.parseInt(multiRequest.getParameter("memNo")));
			r.setRecipePic("/resources/recipe_img/"+multiRequest.getFilesystemName("file0"));
			r.setRecipeVideo("null");
			Category c = new Category();
			c.setcIngreNo(multiRequest.getParameter("c_ingre_no"));
			c.setcKindNo(multiRequest.getParameter("c_kind_no"));
			c.setcNatNo(multiRequest.getParameter("c_nat_no"));
			c.setcStepNo(multiRequest.getParameter("c_step_no"));
			c.setcThemeNo(multiRequest.getParameter("c_theme_no"));
			c.setcToolNo(multiRequest.getParameter("c_tool_no"));
			
			
			String[] ingreClass = multiRequest.getParameterValues("ingreClass");
			ArrayList<String[]> ingreList = new ArrayList<String[]>();
			int ingreNum = 1;
			while(multiRequest.getParameterValues("ingre"+ingreNum)!=null) {
				ingreList.add(multiRequest.getParameterValues("ingre"+ingreNum));
				ingreNum++;
				
			}
			System.out.println(ingreList);
			ArrayList<CookingOrder> cookList = new ArrayList<CookingOrder>();
			
			
			String[] recipeOrder =  multiRequest.getParameterValues("recipeOrder");
			System.out.println(recipeOrder[0]);
			
			for(int i=0;i<recipeOrder.length;i++) {
				
				System.out.println(recipeOrder[i]);
				CookingOrder co = new CookingOrder();
				co.setCoContent(recipeOrder[i]);
				co.setCoImg("/resources/recipe_img/"+multiRequest.getFilesystemName("file"+i+1));
				cookList.add(co);
				
			}
			
			int result = new RecipeService().insertRecipe(r, ingreClass, ingreList, cookList,c);
			
			if(result>0) {
				request.setAttribute("alertMsg", "레시피작성을 성공했습니다");
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("alertMsg", "레시피작성을 실패했습니다!!!");
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
