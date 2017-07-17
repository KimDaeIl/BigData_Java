package work.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import work.Util;
import work.model.dao.MemberDao;
import work.model.dto.Member;

/**
 * Servlet implementation class FrontController
 */
public class FrontController extends HttpServlet {
	// MemberDao
	private MemberDao memberDao = null;

	@Override
	public void init() throws ServletException {
		super.init();
		memberDao = new MemberDao();
	}

	@Override
	public void destroy() {
		super.destroy();
		if (memberDao != null) {
			memberDao = null;
		}
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		process(req, res);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// post 요청에 대한 한글 인코딩
		req.setCharacterEncoding("utf-8");
		process(req, res);

	}

	public void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String action = req.getParameter("action");
		System.out.println(action);

		switch (action) {

		case "login":
			login(req, res);
			break;

		case "signup":
			signUp(req, res);
			break;
		case "logout":
			logout(req, res);
			break;
		case "myInfo":
			myInfo(req, res);
			break;
		case "confirmPw":
			changePw(req, res);
			break;

		}

	}

	// 로그인
	protected void login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action");

		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");

		RequestDispatcher dispatcher = null;

		// 요청 검증 >> 필수 항목
		if (memberId.length() == 0 || memberPw.length() == 0) {
			// 응답 결과 값
			req.setAttribute("message", "로그인 정보 미입력");

			// 데이터 오류 페이지 리다이렉트
			dispatcher = req.getRequestDispatcher("/error.jsp");
		} else {
			Member member = memberDao.selectOne(memberId, memberPw);
			// 모델에 데이터 전달
			if (member != null) {

				// session 객체 생성해서 설정

				HttpSession session = req.getSession(true);
				session.setAttribute("member", member);

				dispatcher = req.getRequestDispatcher("/result.jsp");
				// req.setAttribute("result", memberId + " 님 로그인.");
				// req.setAttribute("grade", "G");

			} else {

				dispatcher = req.getRequestDispatcher("/error.jsp");
				req.setAttribute("error_message", "로그인 정보가 영~ 아인데?");
			}
		}

		dispatcher.forward(req, res);
		// 모델로 부터 검증 결과

	}

	// 가입
	protected void signUp(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		System.out.println("action >> sign up");
		System.out.println(req.getParameter("memberId"));
		System.out.println(req.getParameter("memberPw"));
		System.out.println(req.getParameter("memberPw").equals(req.getParameter("memberPwAgain")));
		System.out.println(req.getParameter("memberName"));
		System.out.println(req.getParameter("mobile"));
		System.out.println(req.getParameter("email"));
	}

	// 로그아웃
	protected void logout(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null) {

			if (session.getAttribute("memberId") != null) {
				session.removeAttribute("memberId");

			}

			if (session.getAttribute("grade") != null) {
				session.removeAttribute("grade");

			}

			session.invalidate();

			res.sendRedirect("index.jsp");
		} else {
			req.setAttribute("error_message", "잘못된 접근입니다.");
			req.getRequestDispatcher("/error.jsp").forward(req, res);
		}

	}

	// 마이 인포
	/*
	 * 1 요청화면 2 controller 3 model controller 응답페잊 ㅣ이동 member.getXxx()
	 */
	protected void myInfo(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(false);

		if (session != null) {

			RequestDispatcher dispatch = null;
			Member member = (Member) session.getAttribute("member");

			if (member != null) {
				dispatch = req.getRequestDispatcher("myInfo.jsp");

			} else {
				req.setAttribute("error_message", "그런 사람 음는데요?");
				dispatch = req.getRequestDispatcher("error.jsp");

			}

			dispatch.forward(req, res);

		} else {
			res.sendRedirect("index.jsp");
		}

	}

	protected void changePw(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String newPw = req.getParameter("checkPw");
		Member member = (Member) req.getSession(false).getAttribute("member");

		if (!(Util.isNull(newPw) && newPw.isEmpty()) && member.getMemberPw().equals(newPw)) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("changePw.jsp");
			dispatcher.forward(req, res);

		} else {
			req.setAttribute("error_message", "비밀번호가 다른데요?");
			res.sendRedirect("error.jsp");
		}
	}

}
