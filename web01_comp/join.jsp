<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<link rel="stylesheet" href="./css/common.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.content { width:1200px; margin:0 auto 50px auto; }
h2 { margin:50px; }
</style>
</head>
<body>
<div class="wrap">
<header id="hd" >
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
<h2 style = text-align:center;>회원가입</h2>
		<form name="joinform" method="post" action="joinPro.jsp" class="join" onsubmit="return joinCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">아이디 :</td>
						<td>
							<input type="text" name="uid" id="uid" placeholder ="아이디 입력" required>
							<input type="button" id="popopen" value="중복확인" onclick="idCheck()">
							<input type="hidden" id="idck" name="idck" value="">
						</td>
					</tr>
					<tr>
						<td class="necessary">비밀번호 : </td>
						<td>
						<input type="text" name="upw" id="upw" placeholder ="비밀번호 입력" required>
						</td>
					</tr>
					<tr>
						<td class="necessary">비밀번호확인 : </td>
						<td>
						<input type="text" name="upw_check" id="upw_check"  placeholder ="비밀번호 확인" required>
						</td>
					</tr>
					<tr>
						<td class="necessary">이름 :</td>
						<td>
							<input type="text" name="name" id="id" placeholder="이름 입력" required>
						</td>
					</tr>
					<tr>
						<td class="necessary">이메일 : </td>
						<td>
						<input type="email" name="email" id="email" size="30" required>
						</td>
					</tr>
					<tr>
						<td class="necessary">주소 : </td>
						<td>
						<input type="text" name="address" id="address" size="30">
						</td>
					</tr>
					<tr>
						<td class="necessary">연락처 : </td>
						<td>
						<input type="text" name="phone" id="phone" size="30">
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="회원가입">&nbsp;
						<input type="reset">
						</td>
					</tr>
				</tbody>
			</table>
			<script>
			function idCheck(){
				window.open("pop.jsp","idwin","width=200","height=200");
			}
			function joinCheck(f){
				if(f.idck.value != "yes"){
					alert("아이디 중복 검사를 진행하지 않았습니다.");
					return false;
				}
				 if(f.upw.value!=f.upw_check.value){
					alert("비밀번호와 비밀번호 확인이 서로 입력값이 다릅니다.");
					return false;
				}
			}
			</script>
		</form>
	</div>
	<footer id="ft" class="panel-footer">
		<%@ include file="ft.jsp" %>
	</footer>
</div>
</body>
</html>