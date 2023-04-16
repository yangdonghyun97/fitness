<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
div{
margin-top: 130px;

}
body{
background-color: #CCE1FF;
}

</style>
</head>
<body>
<h1 onclick="location.href='workingServelt'">로그인 폼</h1>
<hr>
<div><h5>${alert }</h5></div><br>

<form action="loginServlet" method="post">
<table border="1">
	<tr>
	<th>ID: </th><td><input type="text" id="id" name="id"></td>
	</tr>
	<tr>
	<th>PW: </th><td><input  type="password" id="pw" name="pw"></td>
	</tr>
</table>
<br>
<input type="submit"  value="로그인">

</form>
</body>

<script>

</script>
</html>