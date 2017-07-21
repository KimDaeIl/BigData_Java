<%@ page contentType="text/html;charset=KSC5601" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="work.model.Customer" %>

<%
	// Customer 객체 생성
	ArrayList customers = new ArrayList();
	customers.add(new Customer(100, "김춘동", "서울시"));
	customers.add(new Customer(200, "박천민", "경기도"));
	customers.add(new Customer(300, "황윤현", "서울시"));
	customers.add(new Customer(400, "염용식", "대구시"));
	customers.add(new Customer(500, "이민현", "안산시"));

	request.setAttribute("customers", customers);
%>

<fmt:requestEncoding value="KSC5601"/>

<html><head><title>고객 전체 정보</title></head>

<body>
<h2 align=center>고객 전체 정보</h3>
<h3>
<hr>

<jsp:forward page="customer_list.jsp" />
	
</h3>

</body>
</html>

<!--
http://localhost:8080/test_jstl/customer_input.jsp
-->