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
public class NoticeFrontController extends HttpServlet {
	static {
		System.out.println("1. 서블릿 로드");
	}
	
	public NoticeFrontController() {
		System.out.println("2. new instance : 서블릿 객체 생성");
	}
	
	public void init() {
		System.out.println("3. init() 서블릿 초기화");
	}
	
	public void destroy() {
		System.out.println("5. destroy() 서블릿 자원해제");
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
		System.out.println("4. service() 반복 수행");
		String action = req.getParameter("action");
		System.out.println(action);

		switch (action) {

		case "getNoticeAll":
			getNoticeAll(req, res);
			break;

		}

	}

	public void getNoticeAll(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("\n## 공지관리 : 전체조회 서비스 시작");
	}

}
