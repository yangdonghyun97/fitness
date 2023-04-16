<%@page import="vo.helthinMember"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ArrayList<helthinMember> list = new ArrayList<>();
list = (ArrayList<helthinMember>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f1f1f1;
  height: 100%;
}

/* Header styles */
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
.myButton {
  background-color: #008CBA;
  border-radius: 4px;
  color: #fff;
  padding: 10px;
  text-decoration: none;
  margin-right: 10px;
}
.myButton:hover {
  background-color: #005f7f;
}

/* Content styles */
.content {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  padding: 50px;
  min-height: calc(100% - 60px);
}
.content ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content li {
  margin-right: 20px;
}
.content img {
  display: block;
  margin: 0 auto;
  max-width: 100%;
  height: auto;
}

/* Footer styles */
.footer {
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 10px;
  position: absolute;
  bottom: 0;
  width: 100%;
}


/* Logged in user styles */
.fromLeft {
  display: flex;
  justify-content: flex-start;
  align-items: center;
}
#content {
  padding: 50px;
}
#box {
  margin-top: 20px;
}
table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 20px;
}
th {
  background-color: #333;
  color: #fff;
  padding: 10px;
}
td {
  border: 1px solid #ddd;
  padding: 10px;
}

/* Slideshow styles */
.mySlides {
  display: none;
  margin: 0 auto;
  max-width: 100%;
  height: auto;
}

/* Media queries for different screen sizes */
@media only screen and (max-width: 768px) {
  .content {
    padding: 20px;
  }
  .content li {
    margin-right: 10px;
  }
  .content img {
    margin-top: 20px;
  }
  .fromLeft {
    flex-direction: column;
    align-items: flex-start;
  }
  #box {
    overflow-x: scroll;
  }
  table {
    font-size: 0.8rem;
  }
}

@media only screen and (max-width: 480px) {
  .content {
    padding: 10px;
  }
  .content li {
    margin-right: 5px;
  }
  .fromLeft {
    flex-direction: column;
    align-items: center;
  }
  table {
    font-size: 0.7rem;
  }
}



</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.id == null }">

		<div class="header">
				<h2 onclick="location.href='main.jsp'" style="text-align: center;">GYM 이용시스템</h2>
				<a href="login.jsp" class="myButton">로그인</a> <a href="reg.jsp"
					class="myButton">회원가입</a>
		</div>
			
			<div class=content>
			<ul>
			
		
				<li><iframe style="margin-top: 100px;" width="300px" height="250px"
					src="https://www.youtube.com/embed/Hx8Lc_0hUaI"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe></li>
					
						<li><img src="img/main.jpg" style="width: 400px; height: 500px;"></li>
				
					<li><img class="mySlides" src="img/pay.png" style="width: 400px; height: 450px;"> <img
					class="mySlides" src="img/time.png" style="width: 400px; height: 450px;">
						</ul></li>
			</div>
		
			
		
			<div class="footer">
				상호명 : DH | 대표 : 김세호 | 사업자등록번호 : 397-88-01105<br> 주 소 : 제주특별자치도
				제주시 오르막길 12, 2층 <br> Contact us : DH@naver.com
			</div>
		
		</div>
	</c:if>

	<c:if test="${sessionScope.id != null }">
		<div id="header">
		
			<h2 onclick="location.href='workingServelt'" style="text-align: center;">GYM 이용시스템</h2>
			<ul class="fromLeft">
			<li>${sessionScope.id}님반갑습니다!<h6><a href="logout">로그아웃</a></h6>
			</li> <br>
			<li><a href="inhelth.jsp">헬스장 입구</a></li>
			<li><a href="PalyMachineList">기구 현황</a></li>
			</ul>
		</div>
		<hr>
		<div id="content">
		
			<h2 style="text-align: center;">헬스 현재인원 : <%=list.size()%></h2>

			<div id="box">
				<table border="1">
					<tr>
						<th>운동중인 회원</th>
						<th>입장시간</th>
					</tr>
					<c:forEach var="list" items="${list}">
						<tr>
							<td>${list.id }</td>
							<br>
							<td>${list.time}</td>
							<br>
						</tr>
					</c:forEach>
				</table>
			</div>
		<div class="footer">
				
			</div>
	</c:if>

</body>

<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2000); // Change image every 2 seconds
	}
</script>
</html>