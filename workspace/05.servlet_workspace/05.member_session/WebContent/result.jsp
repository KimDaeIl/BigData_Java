<%@page import="work.model.dto.Member"%>
<%@page import="sun.rmi.server.Dispatcher"%>
<%@page import="javax.xml.ws.Dispatch"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 	<%=request.getAttribute("result")%><br /> --%>
	<%-- 	<%=request.getAttribute("grade")%><br /> --%>
<%-- 	<%=request.getSession().toString()%><br /> --%>

	<%
		Member member = (Member) session.getAttribute("member");
		//세션의 존재와 세션의 데이터 값을 비교해야 한다.
		if (member == null) {
			request.setAttribute("error_message", "session 없네");
			request.setAttribute("error_message", "그럼 또 회원 없습니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
			dispatcher.forward(request, response);
		}
	%>

	<%=member.getMemberId()%><br />
	<%=member.getMemberName()%><br />

	<a href="controller?action=logout">로그아웃</a>
	<a href="controller?action=myInfo">내 정보</a>
	<a href="confirmPw.jsp">비밀번호 변경</a>
	
	<!-- 관리자 -->
	<a href="notice?action=getNoticeAll">공지관리</a>
</body>
</html>