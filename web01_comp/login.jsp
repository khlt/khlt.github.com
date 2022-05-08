<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="apple-touch-icon" href="./img/favicon.ico">
<!-- 검색(메타) 정보 -->
<meta name="url" content="https://www.pfizer.co.kr">
<meta name="title" content="한국 화이자제약">
<meta name="description" content="한국 화이자제약 기업정보,제품정보,사회공헌,연구개발">
<meta name="keywords" content="한국 화이자제약">
<!-- 오픈 그래프 -->
<meta property="og:url" content="https://www.pfizer.co.kr/">
<meta property="og:title" content="한국 화이자제약">
<meta property="og:description" content="한국 화이자제약의 기업정보,제품정보,사회공헌,연구개발">
<meta property="og:image" content="./img/logo.png">
<title>한국 화이자 제약</title>
<!-- 기본 플러그인 연결 -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- 웹 폰트/폰트 모듈 연결 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/sub_common.css">

</head>
<style>
.content { min-height:90vh; }
.container-fluid { padding-top:100px; padding-bottom:200px }
#frm1 { width:175px; margin:0 auto; }
.form_wrap li { height:42px; }
.title { text-align:center; }
    @font-face {
        font-family: 'scB';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    } 
    @font-face {
        font-family: 'ROKAF';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSlabSerifBold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }   
</style>
<body>
<div class="wrap">
	<header id="hd">
		<div class="hd_wrap">
			<%@ include file="nav.jsp" %>
		</div>
	</header>
	<div class="content" class="panel-body">
		<div class="container-fluid">
			<h2 class="title">로그인</h2>
			<form id="frm1" name="login" action="loginPro.jsp" method="post" role="form" class="form-horizontal">
				<ul class="form_wrap">
					<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus></li>
					<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required></li>
					<li class="btn_frame" style="padding-left:10px">
						<input type="submit" value="로그인" id="submit" class="btn btn-primary">
						<input type="reset" value="취소" id="reset" class="btn btn-primary">
					</li>
				</ul>
			</form>
	
	</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</div>
</body>
</html>