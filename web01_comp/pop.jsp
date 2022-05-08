<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%
    String uid = request.getParameter("uid");
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/sub_common.css">
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<style>
.form { margin:150px auto 100px auto; text-align:center; }
</style>
</head>
<body>
	<header id="hd">
		<div class="hd_wrap">
			<%@ include file="nav.jsp" %>
		</div>
	</header>
<div class="form">
	<form action="idCheckPro.jsp" method="post" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="  id : 8~12 문자 및 숫자로 입력" size="30px"; required autofocus>
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f) {
		var id = f.id.value;
		id = id.trim();
		if(id.length<8 || id.length>12) {
			alert("아이디는 글자수가 8이상 ~ 12이하 이어야 합니다.");
			return false;
		}
	}
	</script>		
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>