<%@page import="work.model.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Member member = (Member) session.getAttribute("member");
	%>

	<h3>
		id:
		<%=member.getMemberId()%></h3>
	<h3>
		pw:
		<%=member.getMemberPw()%></h3>
	<h3>
		name:
		<%=member.getMemberName()%></h3>
	<h3>
		mobile:
		<%=member.getMobile()%></h3>
	<h3>
		email:
		<%=member.getEmail()%></h3>
	<h3>
		since:
		<%=member.getEntryDate()%></h3>
	<h3>
		mileage:
		<%=member.getMileage()%></h3>
	<h3>
		manager:
		<%=member.getManager()%></h3>
</body>
</html>