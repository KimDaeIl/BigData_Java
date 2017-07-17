<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
<body>
	<table width="100%" height='100%' cellspacing='0'>

		<tr>
			<td class="content" bgcolor='SkyBlue'><br />


				<form action="/session/controller?action=signup" method="post">
					<table cellspacing="0">
						<tr>
							<td>id</td>
							<td><input type="text" name="memberId" value=""
								minlength="2" size="30" /></td>
						</tr>
						<tr>
							<td>pw</td>
							<td><input type="password" name="memberPw" value=""
								minlength="2" size="30" /></td>
						</tr>
						<tr>
							<td>한번 더 pw</td>
							<td><input type="password" name="memberPwAgain" value=""
								minlength="2" size="30" /></td>
						</tr>
						<tr>
							<td>name</td>
							<td><input type="text" size="30" minlength="2"
							name="memberName"
								maxlength="30" /></td>
						</tr>
						<tr>
							<td>mobile</td>
							<td><input type="text" size="30" minlength="0"
							name="mobile"
								maxlength="13" /></td>
						</tr>
						<tr>
							<td>email</td>
							<td><input type="text" size="30" name="email"/></td>
					</table>

					<input type="hidden" name="grade" value="G" /> <input
						type="hidden" name="mileage" value="0" />
					<!-- manager, entry_date -->
					<input type="submit" value="가입 ㄱㄱ" />
				</form></td>
		</tr>
		<tr bgcolor='LightGoldenrod' height='10%'>
			<td colspan="2">footer</td>
		</tr>
	</table>


</body>
</html>