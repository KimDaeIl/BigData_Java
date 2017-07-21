<%@ page contentType="text/html;charset=KSC5601" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="work.model.Customer" %>

<fmt:requestEncoding value="KSC5601"/>

<html><head><title>�� ��ü ����</title></head>

<body>
<h2 align=center>�� ��ü ����</h3>
<h3>
<hr>
Customer : item�鿡 ���� �ݺ� ����: <p>
<c:forEach var="cust" items="${requestScope.customers}">
	<li> ${cust.num} : ${cust.name} : ${cust.address}
</c:forEach>
</h3>

</body>
</html>

<!--
see: http://localhost:8080/test_jstl/customer_input.jsp
-->