<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%ArrayList<MemberVO> list = new ArrayList<MemberVO>();
    list = (ArrayList<MemberVO>)request.getAttribute("list");
    %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th>
	</tr>
	<c:forEach var="list" items="${list }">
	<tr>
		<td>${list.id }</td><td>${list.pw }</td><td>${list.name }</td><td>${list.tel }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>