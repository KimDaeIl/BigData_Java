<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html><head><title>EL �׽�Ʈ</title></head>
<body>
<h3 align=center>EL �׽�Ʈ</h3>

���̵�: ${param.userid}
�Է¿���: ${empty param.userid}

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
	<c:out value="10�а� ���ϴ�" />
</c:if>	

<hr>

</body>
</html>

<!--
http://localhost:8080/test_jstl/test.jsp
http://localhost:8080/test_jstl/test.jsp?userid=khim98
-->