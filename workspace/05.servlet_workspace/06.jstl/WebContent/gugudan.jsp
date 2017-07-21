<%@ page contentType="text/html;charset=KSC5601" %>

<% request.setCharacterEncoding("KSC5601"); %>

<html><head><title>구구단</title></head>
<body>

<center>

<h3>구구단</h3>
<form name="formData" action="#" method="post">
	시작단 : <input type="text" name="start" />&nbsp;&nbsp;
	종료단 : <input type="text" name="end" /> &nbsp;&nbsp;
	<input type="submit" value="구구단" />
</form>

<%
	int startDan = 2;
	int endDan = 9;

	if ( request.getParameter("start") != null) {
		startDan = Integer.parseInt(request.getParameter("start"));
	}

	if ( request.getParameter("end") != null) {
		endDan = Integer.parseInt(request.getParameter("end"));
	}
%>

<table border="1">
	<tr>
		<% for ( int dan = startDan; dan <= endDan ; dan ++) { %>
				<th bgcolor="yellow"> <%= dan %> 단</th>
		<% } %>
	</tr>
	<% for (int step=1; step <= 9; step++) { %>
		<tr>
		<% for (int dan=startDan; dan <= endDan; dan++) { %>
			<td>
			<%= dan %>x<%= step %>=<%= (dan*step) %>
			</td>
		<% } %>
		</tr>
	<% } %>
</table>

</center>
</body>
</html>

<!--
	http://localhost:8889/test_jstl/gugudan.jsp
	http://localhost:8889/test_jstl/gugudan.jsp?start=3&end=5
-->