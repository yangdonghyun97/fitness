<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("id");
LocalDateTime now = LocalDateTime.now();
String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분 ss초"));
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
body{
background-color: #CCE1FF;
}
*{
	text-align: center;
}
table{
 margin: 0 auto;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 onclick="location.href='workingServelt'"> 헬스장 입구 </h1>
<hr>
<c:if test="${sessionScope.pid == null }">
	<form name="frm" action="" method="get">
		<table border="1">
			<tr>
				<td>ID</td>
				<th><input type="text"  name="id"></th>
			</tr>
			<tr>
				<td>Time</td>
				<th><input type="text" name="time" value="<%=formatedNow%>"
					readonly="readonly"></th>
			</tr>
		</table>
		<input type="button" id="sub" value="입장">
		<div>${sessionScope.pid }</div>
		<div id="demo"></div>
		
		<script>
		
		
			const sub = document.querySelector("#sub");
			sub.addEventListener("click", idcheck);
			function idcheck() {
				let pid = document.querySelector("input[name='id']").value;
				const xhttp = new XMLHttpRequest();

				xhttp.onload = function() {

					let data = this.responseText;

					if (data == "입장 완료") {
						document.querySelector("#demo").innerText = data;
						let pid = document.querySelector("input[name='id']").value;
							  const xhttp = new XMLHttpRequest();
							  xhttp.onload = function() {			  
								  location.href="inhelth.jsp";
							    }
							  xhttp.open("GET", "helthinsert?id="+pid, true);
							 
							  xhttp.send();					
					} else if(data== "등록되지않은 회원입니다"){
		
						document.querySelector("#demo").innerText = data;
						document.querySelector("input[name='id']").focus();
					}
					
				}
				xhttp.open("POST", "incheckServlet");
				xhttp.setRequestHeader("Content-type",
						"application/x-www-form-urlencoded");
				xhttp.send("id=" + pid);
			}
		</script>
</c:if>
		
		<c:if test="${sessionScope.pid != null }">
	<form name="frm" action="helthoutServlet" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<th><input type="text" name="id"></th>
			</tr>
			<tr>
				<td>Time</td>
				<th><input type="text" name="time" value="<%=formatedNow%>"
					readonly="readonly"></th>

			</tr>
		</table>
		<input type="submit"  value="퇴장">
		<input type="button" onclick="location.href='workingServelt'" value="홈으로">
		
		<div id="demo"></div>

		<script>
		
		
		</script>

		</c:if>
		

	</form>
</body>
</html>