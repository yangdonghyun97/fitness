<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String id= request.getParameter("id"); %>
    <script src="js/jquery-3.3.1.min.js"></script>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Insert title here</title>
</head>
<body>
<form>
<div id="demo"></div>
	<table border="1">
		<tr>
			<td>ID</td><th><input type="text" name="id" value="<%=id %>"></th><th><input type="button" id="btn" value="중복확인"></th>
		</tr>
	</table>
</form>

<script>

</script>
</body>
</html>