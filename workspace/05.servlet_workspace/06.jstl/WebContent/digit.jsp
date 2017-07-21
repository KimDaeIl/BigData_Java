<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html><head><title>EL 테스트</title></head>
<body>
<h3 align=center>EL 테스트</h3>
<p>소수이하 자리 계산하기
<li> \${ 100 / 3.5 } = ${ 100 / 3.5 }

<li>	
<%
      NumberFormat df = NumberFormat.getInstance(); 
      df.setMaximumFractionDigits(3); 
      double cValue = Double.parseDouble(df.format(100 / 3.5)); 
      pageContext.setAttribute("cValue", cValue);
%>

<li><c:out value="${cValue}" />