<%@ page contentType="text/html;charset=KSC5601" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="KSC5601"/>

<html><head><title>헤더 정보들</title></head>

<body>
<h2 align=center>헤더 정보들</h3>
<h3>
count에 의한 반복 수행: <p>
<c:forEach var="no" begin="1" end="10" step="1">
	<c:out value="${no}" />
</c:forEach>

<hr>
item들에 의한 반복 수행: <p>
<c:forEach var="h" items="${header}">
	<li> <c:out value="${h.key}"/> : 
	<c:out value="${h.value}" />
</c:forEach>
</h3>

</body>
</html>
