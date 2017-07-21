<%@ page contentType="text/html;charset=KSC5601" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="work.model.Customer" %>

<%
	// Customer ��ü ����
	ArrayList customers = new ArrayList();
	customers.add(new Customer(100, "���ᵿ", "�����"));
	customers.add(new Customer(200, "��õ��", "��⵵"));
	customers.add(new Customer(300, "Ȳ����", "�����"));
	customers.add(new Customer(400, "�����", "�뱸��"));
	customers.add(new Customer(500, "�̹���", "�Ȼ��"));

	request.setAttribute("customers", customers);
%>

<fmt:requestEncoding value="KSC5601"/>

<html><head><title>�� ��ü ����</title></head>

<body>
<h2 align=center>�� ��ü ����</h3>
<h3>
<hr>

<jsp:forward page="customer_list.jsp" />
	
</h3>

</body>
</html>

<!--
http://localhost:8080/test_jstl/customer_input.jsp
-->