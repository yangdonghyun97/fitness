<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 전체 body 스타일 */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

/* h1 태그 스타일 */
h1 {
	text-align: center;
	cursor: pointer;
}

/* hr 태그 스타일 */
hr {
	border: none;
	border-top: 1px solid #ccc;
	margin: 10px 0;
}

/* 기구 목록을 담고 있는 div의 스타일 */
#A, #B {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	margin: 10px 0;
}

/* 기구 목록을 담고 있는 ul의 스타일 */
.machine {
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: center;
}

/* 기구 목록을 담고 있는 ul의 li 스타일 */
.machine li {
	display: block;
	margin: 0;
	padding: 0;
	text-align: center;
}

/* 기구 목록을 담고 있는 ul의 li의 input 태그 스타일 */
.machine li input[type="text"] {
	border: none;
	background-color: transparent;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	width: 150px;
}

/* 기구 목록을 담고 있는 ul의 li의 select 태그 스타일 */
.machine li select {
	font-size: 14px;
	padding: 3px;
	margin: 5px 0;
}

/* 기구 목록을 담고 있는 ul의 li의 input[type="submit"] 태그 스타일 */
.machine li input[type="submit"] {
	background-color: #009688;
	border: none;
	color: #fff;
	cursor: pointer;
	font-size: 14px;
	padding: 5px 10px;
	margin: 5px 0;
}

/* 기구 목록을 담고 있는 ul의 li의 img 태그 스타일 */
.machine li img {
	width: 150px;
	height: 150px;
}

/* 기구 목록을 담고 있는 ul의 li의 .box 스타일 */
.machine .box, .machine .box2 {
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid #ccc;
	margin: 10px;
	padding: 10px;
}

/* 기구 목록을 담고 있는 ul의 li의 #text 스타일 */
.machine #text {
	margin: 5px 0;
}

/* 사용 중인 기구를 표시하는 테이블 스타일 */
table {
	border-collapse: collapse;
	width: 30%;
	margin: 10px 0;
}

/* 사용 중인 기구를 표시하는 테이블의 th 스타일 */
table th {
	background-color: #009688;
	border: 1px solid #ccc;
	color: #fff;
	font-size: 14px;
	padding: 5;
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
</style>
</head>
<body>
	<div class="header">
		<h2 onclick="location.href='workingServelt'">GYM 이용시스템</h2>
	</div>

	<h1 onclick="location.href='workingServelt'"
		style="text-align: center;">기구 현황</h1>
	<hr>
	<div id="A">
		<ul class="machine">
			<li class="box"><img src="img/Declinebench.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="declinebench(복근)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box"><img src="img/lowpoolmachine.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="lowpoolmachine(등)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box"><img src="img/Smithmachine.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="Smithmachine(가슴/하체/등)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box"><img src="img/SquatRack.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="SquatRack(하체)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

	</div>
	<div id="B">
		<ul class="machine">
			<li class="box2"><img src="img/cablemachine.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="cablemachine(케이블머신)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box2"><img src="img/PowerRack.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="PowerRack(가슴/등/하체)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box2"><img src="img/highpoolmachine.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="highpoolmachine(등)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

		<ul class="machine">
			<li class="box2"><img src="img/Halfrack.png"></li>
			<form action="playServlet" method="post">
				<li id="text"><input type="text" name="name"
					value="Halfrack(어깨/등/하체)" readonly></li>
				<li id="text"><select name="play">
						<option>사용</option>
						<option>종료</option>
						<input type="submit" value="등록">
				</select></li>
			</form>
		</ul>

	</div>

	<table border="1">
		<tr>
			<th>사용중인 기구</th>
		<tr>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.machinename }</td>
				</tr>
			</c:forEach>
	</table>
</body>
<script>
	
</script>
</html>