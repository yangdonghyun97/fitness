<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
}

/* h1 태그 스타일링 */
h1 {
	text-align: center;
	font-size: 32px;
	color: #333;
	cursor: pointer;
	margin-top: 100px;
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
	width: 400px;
	border: 1px solid #ccc;
	background-color: #fff;
}

/* th 태그 스타일링 */
th {
	text-align: center;
	padding: 10px;
	background-color: #f2f2f2;
	border-bottom: 1px solid #ccc;
}

/* td 태그 스타일링 */
td {
	text-align: left;
	padding: 10px;
	border-bottom: 1px solid #ccc;
}

/* 첫 번째 열 스타일링 */
td:first-child {
	font-weight: bold;
	width: 100px;
}

/* 중복확인 버튼 스타일링 */
#btn2 {
	padding: 5px;
	border: 1px solid #ccc;
	background-color: #f2f2f2;
	border-radius: 5px;
	cursor: pointer;
	margin-left: 10px;
}

/* 중복확인 버튼 마우스 오버 스타일링 */
#btn2:hover {
	background-color: #ccc;
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
	border: 1px solid #F9FFFF;
	box-sizing: border-box;
	width: 60%;
	margin-bottom: 10px;
	float: left;
}

/* input[type="submit"] 태그 스타일링 */
input[type="submit"] {
	background-color: #A0A0C8;
	color: white;
	cursor: pointer;
	width: 100px;
	position: absolute;
	margin-top: 20px;
}
</style>
</head>
<body>
  <div class="header">
    <h2 onclick="location.href='main.jsp'">GYM 이용시스템</h2>
  </div>

  <h1 onclick="location.href='main.jsp'">회원가입</h1>
  <hr>
  <div id="demo"></div>
  <div id="demo2"></div>
  <form name="frm" action="RegServlet" method="post">
    <table>
      <tr>
        <th>ID</th>
        <td>
          <input type="text" name="id">
          <input type="button" id="btn2" value="중복확인" style="color:#70658B">
        </td>
      </tr>
      <tr>
        <th>PW</th>
        <td>
          <input type="password" name="pw">
        </td>
      </tr>
      <tr>
        <th>이름</th>
        <td>
          <input type="text" name="name">
        </td>
      </tr>
      <tr>
        <th>전화번호</th>
        <td>
          <input type="text" name="tel">
        </td>
      </tr>
    </table>
    <input type="submit" onclick="return check()" value="가입">
  </form>
</body>

<script>
	
	
	
   $("#btn2").click(function(){
	const formData = $(frm).serialize();
	$.ajax({
		url: "IdcheckServlet",
		 type: "post",
    	  data: formData,
    	  dataType:"text", 
    	  success: function(data){	 	 
    		 $("#demo2").text(data); 
    	  },
    	  error:function(){
    		  alert("error.....");
    	  }	
	});	
});

	const btn=document.querySelector("#btn");
	btn.addEventListener("click",check);
	
	function check(){
        if(document.frm.id.value == ""){
           alert("아이디를 입력해주세요!");
           document.frm.id.focus();
           return false;
        }else if(document.frm.pw.value == ""){
           alert("비밀번호를 입력해주세요!");
           document.frm.pw.focus();
           return false;
        }else if(document.frm.name.value == ""){
           alert("이름을 입력해주세요!");
           document.frm.name.focus();
           return false;
        }else if(document.frm.tel.value == ""){
           alert("전화번호를 입력해주세요!");
           document.frm.tel.focus();
           return false;
        }else{
        	
        	return true;
        }
     }
	
	
	
</script>
</html>