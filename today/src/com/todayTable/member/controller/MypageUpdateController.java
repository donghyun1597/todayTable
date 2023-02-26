package com.todayTable.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.member.model.service.MemberService;
import com.todayTable.member.model.vo.Allergy;
import com.todayTable.member.model.vo.Member;

/**
 * @author sm.kim
 * Servlet implementation class MypageUpdateController
 * 여기는 메인페이지에서 NAME 눌렀을때 뜨는 회원정보수정 창
 */
@WebServlet("/update.me")
public class MypageUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩 설정
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		// 요청시 전달 값 뽑아서 변수 및 객체 주섬주섬 담기
		// [아이디,이름] 비밀번호,닉네임,휴대폰번호,알러지정보
		// MEM_ID, MEM_PWD,NICKNAME,PHONE,ALG_NAME
		System.out.println(session.getAttribute("loginUser"));
		System.out.println(session.getAttribute("memAlg"));
		System.out.println(session.getAttribute("wishList"));
		
		
		ArrayList<Allergy> memAlg = (ArrayList<Allergy>)session.getAttribute("memAlg");
		
		int memNo =Integer.parseInt(request.getParameter("memNo"));
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String[] algNo = request.getParameterValues("agllergy");
		System.out.println(memNo);
		
		Member m = new Member(memNo, memId, memPwd, nickname, phone);
		
		int result = new MemberService().updateMember(m,algNo,memAlg);
		
		if(result > 0) {
			Member loginUser = new MemberService().loginMember(memId, memPwd);
			memAlg = new MemberService().selectAllergy(memNo);
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("memAlg", memAlg);
			response.sendRedirect(request.getContextPath()+"/myProfile.me");
			
		}else {
			session.setAttribute("alertMsg", "정보수정에 실패했습니다");
			response.sendRedirect(request.getContextPath()+"/myProfile.me");
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
