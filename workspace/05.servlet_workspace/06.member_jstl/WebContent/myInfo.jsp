<%@page import="work.model.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- jstl config  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<c: if test="${empty sessionScope.member}">
		<c:set var="message" value="로그인 해" />
		<jsp:forwoard page="error.jsp" />
	</c:>
	<h3>id: ${requestScope.member.memberId}</h3>
	<h3>pw: ${requestScope.member.memberPw}</h3>
	<h3>name: ${requestScope.member.memberName}</h3>
	<h3>mobile: ${requestScope.member.mobile}</h3>
	<h3>email: ${requestScope.member.email}</h3>
	<h3>since: ${requestScope.member.entryDate}</h3>

	<c:choose>
		<c:when test="${requestScope.member.grade == 'G'}">
			<h3>mileage: ${requestScope.member.mileage}</h3>
		</c:when>

		<c:when test="${requestScope.member.grade == 'A'}">
			<h3>manager: ${requestScope.member.manager}</h3>
		</c:when>
	</c:choose>



	<c:if test="${sessionScope.grade == 'A'}">

	</c:if>

	${sessionScope.memberId}
</body>
</html>