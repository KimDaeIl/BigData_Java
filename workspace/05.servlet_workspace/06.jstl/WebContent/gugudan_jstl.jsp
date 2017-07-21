<%@ page contentType="text/html;charset=KSC5601" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="KSC5601"/>

<html><head><title>备备窜</title></head>
<body>

<center>
<h3>备备窜</h3>
<c:set var="startDan" value="${param.start}"/>
<c:set var="endDan" value="${param.end}"/>
<c:if test="${empty startDan}">
	<c:set var="startDan" value="2"/>
</c:if>
<c:if test="${empty endDan}">
	<c:set var="endDan" value="9"/>
</c:if>

<table border="1">
	<tr>
		<c:forEach var="dan" begin="${startDan}" end="${endDan}" step="1">
			<th bgcolor="yellow">
			<c:out value="${dan}" />窜
			</th>
		</c:forEach>
	</tr>

	<c:forEach var="step" begin="1" end="9" step="1">
		<tr>
		<c:forEach var="dan" begin="${startDan}" end="${endDan}" step="1">
			<td>
			<c:out value="${dan}"/> X <c:out value="${step}"/> = 
			<c:out value="${dan * step}"/> 
			</td>
		</c:forEach>
		</tr>
	</c:forEach>
</table>
</center>
</body>
</html>

<!--
	http://localhost:8889/test_jstl/gugudan_jstl.jsp
	http://localhost:8889/test_jstl/gugudan_jstl.jsp?start=3&end=5
	http://localhost:8080/test_jstl/gugudan_jstl.jsp?start=2&end=19
-->