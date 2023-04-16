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

<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

/* h1 태그 스타일링 */
h1 {
	text-align: center;
	font-size: 32px;
	color: #333;
	cursor: pointer;
}

/* hr 태그 스타일링 */
hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #ccc;
}

/* div 태그 스타일링 */
div {
	text-align: center;
}

/* h5 태그 스타일링 */
h5 {
	color: red;
}

/* form 태그 스타일링 */
form {
	text-align: center;
}

/* table 태그 스타일링 */
table {
	margin: 0 auto;
	border-collapse: collapse;
	width: 300px;
}

/* th 태그 스타일링 */
th {
	text-align: right;
	padding: 10px;
}

/* td 태그 스타일링 */
td {
	text-align: left;
	padding: 10px;
}

/* header 태그 스타일링 */
.header {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.header h2 {
	cursor: pointer;
}

/* input 태그 스타일링 */
input[type="text"], input[type="password"], input[type="submit"] {
	padding: 8px;
	border-radius: 5px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	width: 100%;
	margin-bottom: 10px;
}

/* input[type="submit"] 태그 스타일링 */
input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	width: 80px;
}

/* 입장 버튼 스타일링 */
#sub {
	background-color: #009688;
	color: white;
	cursor: pointer;
	margin-bottom: 10px;
}

/* 홈으로 버튼 스타일링 */
input[type="button"] {
	background-color: #333;
	color: white;
	cursor: pointer;
	width: 80px;
	margin-bottom: 10px;
	display: block;
	margin: 0 auto;
}

/* 테이블 스타일링 */
table {
	margin: 0 auto;
	border-collapse: collapse;
	width: 300px;
	border: 1px solid #ccc;
}

/* 테이블 셀 스타일링 */
td, th {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: left;
}

/* 테이블 셀 헤더 스타일링 */
th {
	text-align: right;
}

/* 테이블 데이터 입력 필드 스타일링 */
input[type="text"] {
	width: 100%;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
    <h2 onclick="location.href='workingServelt'">GYM 이용시스템</h2>
  </div>
<h1 onclick="location.href='workingServelt'"> 헬스장 입구 </h1>
<hr>
<c:if test="${sessionScope.pid == null }">
	<form name="frm" action="" method="get">
		<table border="1">
			<tr>
				<td>ID</td>
				<th><input type="text"  name="id" value="${sessionScope.id}" readonly></th>
			</tr>
			<tr>
				<td>Time</td>
				<th><input type="text" name="time" value="<%=formatedNow%>"
					readonly="readonly"></th>
			</tr>
		</table>
		</form>
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
				<th><input type="text" name="id" value="${sessionScope.id}" readonly></th>
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

	</form>
		</c:if>
</body>
</html>