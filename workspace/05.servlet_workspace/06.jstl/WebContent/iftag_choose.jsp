<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="euc-kr"/>

<html><head><title>JSTL : choose </title></head>
<body>
<h3 align=center>choose �±� �׽�Ʈ</h3>
<hr>
<c:choose>
	<c:when test="${!empty param.name}" >�̸�: ${param.name}</c:when>
	<c:otherwise>�̸�: Guest</c:otherwise>
</c:choose>
</body>
</html>

<!--
	1. http://localhost:8080/test_jstl/iftag_choose.jsp
	2. http://localhost:8080/test_jstl/iftag_choose.jsp?name=HongGilDong
-->

