<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="euc-kr"/>

<html><head><title>JSTL : if </title></head>
<body>
<h3 align=center>if �±� �׽�Ʈ</h3>
<hr>

<c:if test="${!empty param.name}">
	<li>EL �̸�1: ${param.name}<br>
</c:if>

<li>JSTL �̸�2: <c:out value="${param.name}" default="Guest" />

<br>
<li>JSP tag �̸�3: 
<% String name = new String(request.getParameter("name").getBytes("8859_1"), "KSC5601"); %>
<%= name %>

</body>
</html>

<!--
	1. http://localhost:8080/test_jstl/iftag.jsp
	2. http://localhost:8080/test_jstl/iftag.jsp?name=HongGilDong
	3. http://localhost:8080/test_jstl/iftag.jsp?name=ȫ�浿
-->

