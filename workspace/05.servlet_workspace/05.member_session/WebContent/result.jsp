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
		//������ ����� ������ ������ ���� ���ؾ� �Ѵ�.
		if (member == null) {
			request.setAttribute("error_message", "session ����");
			request.setAttribute("error_message", "�׷� �� ȸ�� �����ϴ�.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
			dispatcher.forward(request, response);
		}
	%>

	<%=member.getMemberId()%><br />
	<%=member.getMemberName()%><br />

	<a href="controller?action=logout">�α׾ƿ�</a>
	<a href="controller?action=myInfo">�� ����</a>
	<a href="confirmPw.jsp">��й�ȣ ����</a>
	
	<!-- ������ -->
	<a href="notice?action=getNoticeAll">��������</a>
</body>
</html>