<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Insert title here</title>
<style>
body{
background-color: #CCE1FF;
}

#A{
display: flex;
width: 100%;
}
#B{
display: flex;
width: 100%;
margin-top: 50px;
}
.box{
width: 100px;
height: 100px;
border : 1px solid black;
display: flex;

}
.box2{
width: 100px;
height: 100px;
border : 1px solid black;

}
img {
width: 100%;
height: 100%;
  object-fit: cover;
}
ul{
   list-style:none;
}

</style>
</head>
<body>
<h1 onclick="location.href='workingServelt'" style="text-align: center;">기구 현황</h1>
<hr>
<div id="A">
	<ul class="machine">
	<li class="box"><img src="img/Declinebench.png"></li>
	<form action="playServlet" method="post">
	<li id="text"><input type="text" name="name" value="declinebench(복근)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="lowpoolmachine(등)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="Smithmachine(가슴/하체/등)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="SquatRack(하체)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="cablemachine(케이블머신)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="PowerRack(가슴/등/하체)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="highpoolmachine(등)" readonly></li>
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
	<li id="text"><input type="text" name="name" value="Halfrack(어깨/등/하체)" readonly></li>
	<li id="text"><select name="play">
	<option>사용</option>
	<option>종료</option>
	<input type="submit" value="등록">
	</select></li>
	</form>
	</ul>
	
	</div>
	
	<table border="1">
							<tr><th>사용중인 기구</th><tr>
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