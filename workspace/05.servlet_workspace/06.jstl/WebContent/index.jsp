<%@ page contentType="text/html;charset=euc-kr" %>
<HTML>
<HEAD>
<TITLE> EL & JSTL 예제 </TITLE>
</HEAD>

<BODY>
	<h2>EL & JSTL 예제</h2>
	<hr>
	<h3>
	<a href="hello_el.jsp?name=김하린&address=서울시">[EL 예제] hello_el.jsp?name=김하린&address=서울시</a><p>
	<a href="hello_el.jsp">[EL 예제] hello_el.jsp : 예외 발생됨</a>

	<hr>		
	<a href="iftag.jsp">[if 예제] iftag.jsp : 예외 발생됨</a><p><p>
	<a href="iftag.jsp?name=HongKilDong">[if 예제] iftag.jsp?name=HongKilDong</a><p><p>
	<a href="iftag.jsp?name=홍길동">[if 예제] iftag.jsp?name=홍길동</a>

	<hr>
	<a href="chooseflag.jsp?type=1">[choose 예제] chooseflag.jsp?type=1</a><p>
	<a href="chooseflag.jsp">[choose 예제] chooseflag.jsp</a>
	
	<a href="iftag_choose.jsp">[choose 예제] iftag_choose.jsp</a><p>
	<a href="iftag_choose.jsp?name=HongGilDong">[choose 예제] iftag_choose.jsp?name=HongGilDong</a>
	
	<hr>
	<a href="headers.jsp">[JSP 예제] headers.jsp</a><p>
	<a href="headers_jstl.jsp">[forEach 예제] headers_jstl.jsp</a>

	<hr>
	<a href="gugudan.jsp">[JSP 예제] gugudan.jsp</a><p>
	<a href="gugudan_jstl.jsp">[forEach 예제] gugudan_jstl.jsp</a>

	<hr>
	<a href="customer_input.jsp">[forEach 예제] customer_input.jsp</a><p>

	</h3>
</BODY>
</HTML>


