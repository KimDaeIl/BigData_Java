<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html><head><title>EL 테스트</title></head>
<body>
<h3 align=center>EL 테스트</h3>

아이디: ${param.userid}
입력여부: ${empty param.userid}

<hr>

<%
	String userid = request.getParameter("userid");
	if (userid != null) {
%>
<%= userid %>
<%
	}
%>

<hr>
<c:if test="${param.type == 1}" >
	<c:out value="10분간 쉽니다" />
</c:if>	

<hr>

</body>
</html>

<!--
http://localhost:8080/test_jstl/test.jsp
http://localhost:8080/test_jstl/test.jsp?userid=khim98
-->