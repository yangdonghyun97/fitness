<%@page import="vo.helthinMember"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<helthinMember> list = new ArrayList<>();
    list=(ArrayList<helthinMember>)request.getAttribute("list");
   
    %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	text-align: center;
}
table{
 margin: 0 auto;
}
body{
background-color: #CCE1FF;
}
</style>
</head>
<body>
		<h2>현재 헬스장인원 : </h2>
		<hr>
	<form>
		<table border="1">
		<tr>
		<th>운동중인 회원</th><th>입장시간</th></tr>
		<c:forEach var="list" items="${list}">
		<tr>
		<td>${list.id }</td><br>	
		<td>${list.time}</td><br>
		</tr>
		</c:forEach>
		</table>
		
	
	</form>
</body>
</html>