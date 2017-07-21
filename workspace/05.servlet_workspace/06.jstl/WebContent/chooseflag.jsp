<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="euc-kr"/>

<html><head><title>JSTL : choose~when~otherwise </title></head>
<body>
<h3 align=center>choose~when~otherwise 태그 테스트</h3>
<hr>
<c:choose>
	<c:when test="${param.type == 1}"><c:out value="10분간 쉽니다"/></c:when>
	<c:when test="${param.type == 2}"><c:out value="20분간 쉽니다"/></c:when>
	<c:otherwise><c:out value="오늘수업을 마치겠습니다"/></c:otherwise>
</c:choose>

</body>
</html>

<!--
http://localhost:8080/test_jstl/chooseflag.jsp
http://localhost:8080/test_jstl/chooseflag.jsp?type=2
http://localhost:8080/test_jstl/chooseflag.jsp?type=99
-->