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
    
    .page_wrap{padding-top: 70px; padding-bottom: 150px;}
    .p_content {padding-bottom: 20px ; padding-left: 20px; color: #5b5b5b;}
    
    .page_wrap table tr { padding-top: 15px; border-bottom: solid 1px #f26649; display : block; }
    .history .year p {  width: 80px; padding : 5px 0; border: solid 1px #f26649; text-align: center; color: #000000; display: inline-block;
    margin-bottom: 1em;}
    .page_con .sub_tit2 { line-height: 3em;}
    .page_wrap .read { line-height: 2em; }
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
            </div>
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./img/produtpillarbanner0-1346850329570655-554896.png" alt="기업소개">
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
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sub_tit">화이자-바이오앤텍(코미나티) 이름 변경</h2>
                            <p class="sub_tit2">화이자-바이오엔텍(코미나티)은 2021년 8월 23일 16세 이상을 위한 백신으로서 미식품의약국(FDA)의 승인을 받았습니다.<br></p>
                            <p class="read"> 백신이 FDA의 승인을 받으면 회사는 브랜드 이름으로 백신을 판매할 수 있습니다. <br>
                            코미나티는 화이자-바이오엔텍 COVID-19 백신의 브랜드 이름입니다. <br>
                            16세 이상을 위해 FDA가 허가한 화이자-바이오엔텍 COVID-19 백신은 FDA 승인 후 코미나티로 판매되었습니다. <br>
                            이름 변경 이후 백신 조제 방식에는 변화가 없었습니다.
                            5-15세를 대상으로 할 때는 화이자-바이오엔텍 백신 라벨이 계속해서 사용됩니다. 이 연령 그룹에 대해서는 백신 사용이 허가되었지만, 승인을 받지는 못했기 때문입니다.
                            </p>
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
                                    <select name="sel" id="sel2" class="sel">
                                        <option value="company.jsp#page1">기업소개</option>
                                        <option value="company.jsp#page2" selected>연혁</option>
                                        <option value="company.jsp#page3">비전 및 미션</option>
                                        <option value="company.jsp#page4">핵심가치</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sub_tit">화이자 의학정보실 소개</h2>
                            <p class="read">화이자 의학정보실은 보건의료전문가, 환자 및 보호자와 직접 소통합니다.<br>

                                화이자 의학정보실은 전세계에 양질의 일관된 의학정보를 제공하는 글로벌 조직입니다.<br>
                                
                                화이자 의학정보실은 보건의료전문가 면허가 있거나 관련 교육을 받고 제품에 대한 전문적인 지식을 갖춘 전문 인력으로 구성되어 있습니다.</p>
                                <h2 class="read_tit">화이자 의학정보실에서 하는 일</h2>
                            <p class="read">다양한 보건의료전문가, 환자 및 보호자의 자발적 의학정보 문의에 대한 답변을 제공합니다.</p>
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
                                    <select name="sel" id="sel3" class="sel">
                                        <option value="company.jsp#page1">기업소개</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3" selected>비전 및 미션</option>
                                        <option value="company.jsp#page4">핵심가치</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sub_tit">비전 및 미션</h2>
                            <p class="sub_com">한국화이자제약은 '환자들의 삶을 변화시키는 혁신(Breakthroughs that Change Patients' Lives)' 이라는 기업 목표를 실현하기 위해<br>
                                 아래와 같은 주요 미션과 기업 가치를 세워 실천해 나아가고 있습니다.</p>
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
                                    <select name="sel" id="sel4" class="sel">
                                        <option value="company.jsp#page1">기업소개</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3">비전 및 미션</option>
                                        <option value="company.jsp#page4" selected>핵심가치</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sub_tit">핵심가치</h2>
                            <p class="sub_com">전 세계 화이자제약 직원들은 용기(Courage), 탁월함(Excellence), 형평성(Equity), 기쁨(Joy) 등 4 가지의 가치를 추구하고 있습니다.</p>
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