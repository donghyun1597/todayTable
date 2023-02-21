package com.todayTable.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.member.model.service.MemberService;
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
		
		// 요청시 전달 값 뽑아서 변수 및 객체 주섬주섬 담기
		// [아이디,이름] 비밀번호,닉네임,휴대폰번호,알러지정보
		// MEM_ID,MEM_NAME,MEM_PWD,NICKNAME,PHONE,ALG_NAME
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memPwd = request.getParameter("memPwd");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String[] algNameArr = request.getParameterValues("algName");
		
		String algName = "";
		if (algNameArr != null) {
			algName = String.join(",", algNameArr);
		}
		
		Member m = new Member(memId, memName, memPwd, nickname, phone, algName);
		
		Member updateMem = new MemberService().updateMember(m);
		
		if(updateMem == null) {	// 실패
			request.setAttribute("errorMsg", "회원정보 수정에 실패했습니다.");
			
			RequestDispatcher view = request.getRequestDispatcher("/views/common/errorPage.jsp");
			view.forward(request, response);
		}else {	// 성공 => alert 메세지 띄울거다
			
			// session에 담겨 있는 loginUser 바꿔치기 작업
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateMem);
			
			session.setAttribute("alertMsg", "성공적으로 회원정보 수정했습니다!");
			
			// mypage.me로 할건지 아직 안 정
			response.sendRedirect(request.getContextPath() + "/myPage.me");
			
			
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
