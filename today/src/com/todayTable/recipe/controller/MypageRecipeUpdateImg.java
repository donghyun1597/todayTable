package com.todayTable.recipe.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.todayTable.member.model.service.MemberService;
import com.todayTable.member.model.vo.Member;

/**
 * Servlet implementation class MypageRecipeUpdateImg
 */
@WebServlet("/updateImg.me")
public class MypageRecipeUpdateImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageRecipeUpdateImg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 모달창 열기 위해 updateModal 이라는 attribute 추가하기
		request.setAttribute("updateModal", true);
		// 이미지 수정할 모달있는 jsp
		RequestDispatcher dispathcer = request.getRequestDispatcher("/mypageRecipe.jsp");
		dispathcer.forward(request, response);
		
		// 파일 업로드르 위한 라이브러리를 이용하여 파일을 받아옵니다
		Part filePart = request.getPart("updateImg");
		String fileName = filePart.getSubmittedFileName();
		
		// 받아온 파일을 저장합니다.
		String savePath = "/resources/image/mem-img";
		File fileSaveDir = new File(savePath);
		if(!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		filePart.write(savePath + File.separator + fileName);
		
		// 변경된 이미지 파일명을 DB에 저장합니다
		Member loginUserImg = (Member)request.getSession().getAttribute("loginUserImg");
		String memberId = loginUserImg.getMemberId();
		MemberService service = new MemberServiceImg();
		service.updateMemImg(memberId, fileName);
		
		// 페이지를 리다이렉트합니다
		response.sendRedirect(request.getContextPath() + "/profile.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
