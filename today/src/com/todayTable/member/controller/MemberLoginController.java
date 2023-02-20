package com.todayTable.member.controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todayTable.member.model.service.MemberService;
import com.todayTable.member.model.vo.Allergy;
import com.todayTable.member.model.vo.Member;
import com.todayTable.member.model.vo.WishList;

/**
 * Servlet implementation class MemberLoginController
 */
@WebServlet("/login.me")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId=request.getParameter("memId");
		String memPwd=request.getParameter("memPwd");
		
		Member member = new MemberService().loginMember(memId,memPwd);
		HttpSession session = request.getSession();
		if(member!=null) {
			if(member.getMemId().equals("admin")) {
				request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
			}else {
				
				Allergy memAlg = new MemberService().selectAllergy(member.getMemNo());
				WishList wishList = new MemberService().selectWishList(member.getMemNo());
				
				System.out.println(member);
				System.out.println(memAlg);
				System.out.println(wishList);
				
				session.setAttribute("loginUser", member);
				session.setAttribute("memAlg", memAlg);
				session.setAttribute("wishList", wishList);
				
				response.sendRedirect(request.getContextPath());
				
			}
			
			
		}else {
			
			System.out.println("로그인실패");
			session.setAttribute("alertMsg", "없는 회원입니다");
			response.sendRedirect(request.getContextPath()+"/loginForm.me");
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
