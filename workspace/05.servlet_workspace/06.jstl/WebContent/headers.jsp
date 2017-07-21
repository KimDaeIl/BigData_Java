<!-- 
<%@ page contentType="text/html;charset=KSC5601" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="KSC5601"/>
<html><head><title>헤더 정보들</title></head>
<body>
<h3 align=center>헤더 정보들</h3>
<c:forEach var="h" items="${header}">
	<li> <c:out value="${h.key}"/> : 
	<c:out value="${h.value}" />
</c:forEach>
-->

<%@ page contentType="text/html;charset=KSC5601" %>
<%@ page import="java.util.Enumeration" %>

<h3 align=center>헤더 정보들</h3>
	<%
		request.setCharacterEncoding("KSC5601");
		
		Enumeration e = request.getHeaderNames();

		if(e.hasMoreElements()){
			while(e.hasMoreElements()){
				String key = (String)e.nextElement();	
				String value = request.getHeader(key);
	%>
				<li><%= key %>  : <%= value %>
	<%
			}
		}
	%>

</body>
</html>
