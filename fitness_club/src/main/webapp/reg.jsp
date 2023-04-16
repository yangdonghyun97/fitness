<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
<h1 onclick="location.href='main.jsp'">회원가입</h1>
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
<hr>
<div id="demo"></div>
<div id= "demo2"></div>
<form name="frm" action="RegServlet" method="post">
	<table border="1">
		<tr>
		<th>id</th><th><input type="text" name="id"></th><td><input type="button" id="btn2" value="중복확인" ></td>
		</tr>
		<tr>
		<th>pw</th><th><input type="text" name="pw"></th>
		</tr>
		<tr>
		<th>name</th><th><input type="text" name="name"></th>
		</tr>
		<tr>
		<th>tel</th><th><input type="text" name="tel"></th>
		</tr>
	</table>
	<input type="submit" onclick="return check()" value="가입">
	
</form>
	
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
</body>

</html>