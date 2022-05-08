<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <style>
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
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <!-- <link rel="stylesheet" href="./css/reset.css"> -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/sub_common.css">


    
</head>
<body>
    <div class="wrap">
        <header id="hd">
        	<div class="hd_wrap">
				<%@ include file="nav.jsp" %>
	        </header>
	        <div id="content">
	            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./img/BannerPediatricHealthStressReliefforChildren1920x450-1348691902566038-554901.jpg" alt="기업소개">
                        <div class="tit_box">

                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index.jsp" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1" selected>기업소개</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3">비전 및 미션</option>
                                        <option value="company.jsp#page4">핵심가치</option>
                                        <option value="company.jsp#page5">윤리경영</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">

                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./img/produtpillarbanner0-1346850329570655-554896.png" alt="연혁">
                        <div class="tit_box">

                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index.jsp" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1" selected>연혁</option>
                                        <option value="company.jsp#page2">비전 및 미션</option>
                                        <option value="company.jsp#page3">핵심가치</option>
                                        <option value="company.jsp#page4">윤리경영</option>
                                        <option value="company.jsp#page5">기업소개</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./img/produtpillarbanner0-1346850329570655-554896.png" alt="비전 및 미션">
                        <div class="tit_box">

                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index.jsp" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1" selected>비전 및 미션</option>
                                        <option value="company.jsp#page2">핵심가치</option>
                                        <option value="company.jsp#page3">윤리경영</option>
                                        <option value="company.jsp#page4">기업소개</option>
                                        <option value="company.jsp#page5">연혁</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            
                        </div>
                    </div>
                </section>
                <section class="page" id="page4">
                    <figure class="sub_ban">
                        <img src="./img/produtpillarbanner0-1346850329570655-554896.png" alt="핵심가치">
                        <div class="tit_box">
                        
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index.jsp" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1" selected>핵심가치</option>
                                        <option value="company.jsp#page2">윤리경영</option>
                                        <option value="company.jsp#page3">기업소개</option>
                                        <option value="company.jsp#page4">연혁</option>
                                        <option value="company.jsp#page5">비전 및 미션</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            
                        </div>
                    </div>
                </section>

            </div>
            <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
        </div>
        <footer id="ft">
			<%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>