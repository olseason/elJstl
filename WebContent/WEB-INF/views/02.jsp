<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>연산</h1>
	
	<p>
		${5+2} <br>
		${5-2} <br>
		${5*2} <br>
		<br>
		
		${5/2} <br>
		${5 div 2} <br>
		<br>
		
		${5%2} <br>
		${5 mod 2} <br>
		<br><br>
		
		${5>2} <br>
		${5 gt 2} <br>
		<br><br>
		
		${5<2} <br>
		${5 lt 2} <br>
		<br><br>
		
		${5>=2} <br>
		${5 ge 2} <br>
		<br><br>
		
		${5<=2} <br>
		${5 le 2} <br>
		<br><br>
		
		${5==2} <br>
		${5 eq 2} <br>
		<br><br>
		
		${5!=2} <br>
		${5 ne 2} <br>
		<br><br>
		
		${5>=2 ? 5 :2} <br>
		<br><br>
		
		${ (5>2) && (2>10) } <br>
		${5>2} && ${2>10} <br>
		<br><br>
		
		${empty str} <br>
		
		<%
			String val = (String)request.getAttribute("reqVal");
		%>
		<%= val %>
		${reqVal} <br>
		
		
		
	</p>

</body>
</html>