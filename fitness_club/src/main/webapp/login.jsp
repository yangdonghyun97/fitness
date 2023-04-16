<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 전체 body 스타일링 */
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

h1 {
	margin-top: 100px;
}
</style>
</head>
<body>
	<div class="header">
		<h2 onclick="location.href='main.jsp'">GYM 이용시스템</h2>
	</div>
	<h1 onclick="location.href='workingServelt'">로그인 폼</h1>
	<hr>
	<div>
		<h5>${alert }</h5>
	</div>
	<br>

	<form action="loginServlet" method="post">
		<table border="1">
			<tr>
				<th>ID:</th>
				<td><input type="text" id="id" name="id"></td>
			</tr>
			<tr>
				<th>PW:</th>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>
		</table>
		<br> <input type="submit" value="로그인">

	</form>
</body>

<script>
	
</script>
</html>