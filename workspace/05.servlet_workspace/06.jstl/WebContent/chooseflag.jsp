<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="euc-kr"/>

<html><head><title>JSTL : choose~when~otherwise </title></head>
<body>
<h3 align=center>choose~when~otherwise �±� �׽�Ʈ</h3>
<hr>
<c:choose>
	<c:when test="${param.type == 1}"><c:out value="10�а� ���ϴ�"/></c:when>
	<c:when test="${param.type == 2}"><c:out value="20�а� ���ϴ�"/></c:when>
	<c:otherwise><c:out value="���ü����� ��ġ�ڽ��ϴ�"/></c:otherwise>
</c:choose>

</body>
</html>

<!--
http://localhost:8080/test_jstl/chooseflag.jsp
http://localhost:8080/test_jstl/chooseflag.jsp?type=2
http://localhost:8080/test_jstl/chooseflag.jsp?type=99
-->