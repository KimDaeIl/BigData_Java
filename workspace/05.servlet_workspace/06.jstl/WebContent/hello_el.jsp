<%@ page contentType="text/html;charset=euc-kr" %>
<%-- <%@ page isELIgnored="true" %> --%>

<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html><head><title>EL 테스트</title></head>
<body>
<h3 align=center>EL 테스트</h3>
<p>수식 계산하기
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
	
<p>헤더 정보 얻기
<li> 웹 브라우저 : ${ header["user-agent"] }
<li> 웹 브라우저 : ${ header.user-agent }
<li> 사용자 컴퓨터 : ${ header["host"] }

<p>requset 정보 얻기
<li> HTTP 메소드 : ${ pageContext.request.method }

<p>파라메터 값 얻기
<li> name 파라메터: ${ param["name"] } : 
	<li> name 파라메터: ${ param.name } : 
<li> name 파라메터 값이 공백?: ${empty param["name"] }
<%
	String tmpName = request.getParameter("name");
	
	String name=null;
	if(tmpName!=null)
	name = new String(tmpName.getBytes("8859_1"), "KSC5601");
%>
<%= name %>


<li> address 파라메터: ${ param.address }
<li> address 파라메터 값이 공백?: ${empty param.address }
<%
	String tmpAddress = request.getParameter("address");
String address =null;	
if(tmpAddress !=null)
	address = new String(tmpAddress.getBytes("8859_1"), "euc-kr");
%>
<%= address %>

<p>세션 ID 쿠키 값 얻기
<li>세션 ID : <%= session.getId() %>
<li> 
<% 
	HttpSession sess = request.getSession(true);
%>
 세션 ID : <%= sess.getId() %>

<li> 세션 ID : ${ cookie["JSESSIONID"].value }
<li> 세션 ID : ${ cookie.JSESSIONID.value }
</body>
</html>

<!-- 
http://localhost:8080/test_jstl/hello_el.jsp?name=김하린&address=서울시
-->
