<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
LocalDateTime now = LocalDateTime.now();
String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분 ss초"));
%>
<!DOCTYPE html>
<style>
* {
	text-align: center;
}

table {
	margin: 0 auto;
}

body {
	background-color: #CCE1FF;
}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm" action="helthoutServlet" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<th>"${sesstionScope.pid }"님 반갑습니다</th>
			</tr>
			<tr>
				<td>Time</td>
				<th><input type="text" name="time" value="<%=formatedNow%>"
					readonly="readonly"></th>

			</tr>
		</table>
		<input type="submit" value="퇴장">
		<div id="demo"></div>

		<script>
		const sub2 = document.querySelector("#sub2");
		sub2.addEventListener("click", out);
		function out() {
			alert("...");
			  const xhttp = new XMLHttpRequest();
			  xhttp.onload = function() {
			    }
			  xhttp.open("GET", "helthoutServlet?id="+${sesstionScope.pid }, true);
			  xhttp.send();
			}
		</script>
</body>
</html>