<%@ page contentType="text/html;charset=euc-kr" %>
<%-- <%@ page isELIgnored="true" %> --%>

<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html><head><title>EL �׽�Ʈ</title></head>
<body>
<h3 align=center>EL �׽�Ʈ</h3>
<p>���� ����ϱ�
<li> \${ 2 + 5 } = ${ 2 + 5 }
<li> \${ 2 / 5 } = ${ 2 / 5 }
<li> \${ 2 < 5 } = ${ 2 < 5 }
<li> \${ 10 / 3 } = ${ 10 / 3 }
<li> 
	<c:set var="result" value="${10 % 3}" scope="request"/>	

<%
      NumberFormat df = NumberFormat.getInstance(); 
      df.setMaximumFractionDigits(2); 

      double cValue = Double.parseDouble(df.format(10/3)); 
      out.println("cValue : " + cValue);
%>
	
<p>��� ���� ���
<li> �� ������ : ${ header["user-agent"] }
<li> �� ������ : ${ header.user-agent }
<li> ����� ��ǻ�� : ${ header["host"] }

<p>requset ���� ���
<li> HTTP �޼ҵ� : ${ pageContext.request.method }

<p>�Ķ���� �� ���
<li> name �Ķ����: ${ param["name"] } : 
	<li> name �Ķ����: ${ param.name } : 
<li> name �Ķ���� ���� ����?: ${empty param["name"] }
<%
	String tmpName = request.getParameter("name");
	
	String name=null;
	if(tmpName!=null)
	name = new String(tmpName.getBytes("8859_1"), "KSC5601");
%>
<%= name %>


<li> address �Ķ����: ${ param.address }
<li> address �Ķ���� ���� ����?: ${empty param.address }
<%
	String tmpAddress = request.getParameter("address");
String address =null;	
if(tmpAddress !=null)
	address = new String(tmpAddress.getBytes("8859_1"), "euc-kr");
%>
<%= address %>

<p>���� ID ��Ű �� ���
<li>���� ID : <%= session.getId() %>
<li> 
<% 
	HttpSession sess = request.getSession(true);
%>
 ���� ID : <%= sess.getId() %>

<li> ���� ID : ${ cookie["JSESSIONID"].value }
<li> ���� ID : ${ cookie.JSESSIONID.value }
</body>
</html>

<!-- 
http://localhost:8080/test_jstl/hello_el.jsp?name=���ϸ�&address=�����
-->
