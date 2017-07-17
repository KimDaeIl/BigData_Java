<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>jsp life cycle</title>
</head>
<body>

	<h3>JSP Life Cycle</h3>

	<%!public String title = "Life Cycle";
	public int count = 0;%>

	<%!public void jspInit() {
		System.out.println("init()");
	}%>

	<%!public void jspDestroy() {
		//���� ���� ����ǰų�, ������ ����Ǹ� ȣ��
		System.out.println("destroy()");
	}%>
	<!-- expression tag: ���� �ڵ� ��ȯ -->
	<h1><%=title%></h1>

	<%
		// ���� �ڵ� ��ȯ �ڵ�
		String title = "Life Cycle";
	%>

	<h3>
		requestCount:
		<%=++count%></h3>

	<hr>
	<h3>1~10���� �� >> ���� ���� ������� ��� ���</h3>
	<%!public int sum = 0;%>
	<%= 10*(10+1)/2 %>
	<ul>
		<%
			for (int i = 1; i <= 10; i++) {
				sum += i;
		%>
		<li><%=i%></li>
		<%
			}
		%>

		<h2><%=sum%></h2>
	</ul>
</body>
</html>