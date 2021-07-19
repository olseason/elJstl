<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>
<%@ page import="java.util.List" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
			</tr>
		</thead>
		
		<tbody>
		<%for(int i =0; i<userList.size(); i++) { %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
		<% } %>	
		</tbody>
	</table>
	
	<br><br><br>
		<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
				<td>index</td>
				<td>count</td>
			</tr>
		</tbody>
			<tbody>
				<c:forEach items="${userList}" var="userVo" varStatus="status" begin="5" end="10" step="6"> 
				<!-- status는 위에 for문의 i값과도 같은 -->
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
				</c:forEach>
			</tbody>
	</table>

</body>
</html>