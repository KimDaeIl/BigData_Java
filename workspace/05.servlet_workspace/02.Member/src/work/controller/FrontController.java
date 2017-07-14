package work.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import work.model.dao.MemberDao;

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

		default:

		}

	}

	protected void login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("action >> login");

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
			String grade = memberDao.login(memberId, memberPw);
			// 모델에 데이터 전달
			if (grade != null) {
				dispatcher = req.getRequestDispatcher("/result.jsp");
				req.setAttribute("result", memberId + " 님 로그인.");
				req.setAttribute("grade", "G");
			} else {

				dispatcher = req.getRequestDispatcher("/error.jsp");
				req.setAttribute("message", "로그인 정보가 영~ 아인데?");
			}
		}

		dispatcher.forward(req, res);
		// 모델로 부터 검증 결과

	}

	protected void signUp(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		System.out.println("action >> sign up");
		System.out.println(req.getParameter("memberId"));
		System.out.println(req.getParameter("memberPw"));
		System.out.println(req.getParameter("memberPw").equals(req.getParameter("memberPwAgain")));
		System.out.println(req.getParameter("memberName"));
		System.out.println(req.getParameter("mobile"));
		System.out.println(req.getParameter("email"));
	}

}
