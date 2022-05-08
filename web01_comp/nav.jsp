<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- (a.logo>img)+(nav#gnb>ul>li*5>span+(ul.sub>li*4>a{메뉴$}))+(p#tnb>a{상단$}*3) -->
<!-- .logo는 a태그 - a태그는 인라인방식이라 사이즈를 조절할수 없다
사이즈를 조절하려면 display:block으로 지정하고 사이즈를 조절 해야한다.-->
<a href="index.jsp" class="logo">
    <img src="./img/logo.png" alt="로고">
</a>
<nav id="gnb">
    <ul>
        <li>
            <span>회사소개</span>
            <ul class="sub">
                <li><a href="company.jsp#page1">기업소개</a></li>
                <li><a href="company.jsp#page2">연혁</a></li>
                <li><a href="company.jsp#page3">비전 및 미션</a></li>
                <li><a href="company.jsp#page4">핵심가치</a></li>
                <li><a href="company.jsp#page5">윤리경영</a></li>
            </ul>
        </li>
        <li>
            <span>연구개발</span>
            <ul class="sub">
                <li><a href="development.jsp#page1">화이자제약</a></li>
                <li><a href="development.jsp#page2">연도별 활동</a></li>
                <li><a href="development.jsp#page3">성과</a></li>
                <li><a href="development.jsp#page4">앞으로의 방향</a></li>
            </ul>
        </li>
        <li>
            <span>제품정보</span>
        </li>
        <li>
            <span>사회공헌</span>
            <ul class="sub">
                <li><a href="contribute.jsp#page1">화이자 사랑의 장학금</a></li>
                <li><a href="contribute.jsp#page2">환자 지원 활동</a></li>
                <li><a href="contribute.jsp#page3">의학 연구 지원</a></li>
                <li><a href="contribute.jsp#page4">지역사회 기여</a></li>
            </ul>
        </li>
        <li>
            <span>화이자소식</span>
        </li>
    </ul>
</nav>
<p id="tnb">
<%
String fffffff = (String)session.getAttribute("up");
	String sid = (String)session.getAttribute("uid");
	String sname = (String)session.getAttribute("name");
	if(sid==null){
%>
<a href="login.jsp">로그인</a>
<a href="index.jsp">손님</a>
<a href="agree.jsp">회원가입</a>
<%
} else if(!sid.equals("admin")){
%>
<a href="logout.jsp">로그아웃</a>
<a href="mypage.jsp"><%=sname %></a>
<%
}else{
%>
<a href="mypage.jsp"><%=sname %></a>
<a href="memberList.jsp">회원관리</a>
<a href="boardList.jsp">게시판관리</a>
<a href="">상품관리</a>
<a href="logout.jsp">로그아웃</a>
<span id="msg_a"></span>
<%
}
%>
</p>
<script>
//주소 입력줄로 받은 msg를 받아 출력하는 부분임
var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
var pos = url.indexOf("?msg=");
var msg = url.substr(pos+5); //메시지만 추출
var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
//msg_a.innerHTML = decodeURI(msg);
if(pos>0) {
	if(msg!=""){
		msg_a.innerHTML = msg;
		alert(msg);
		}
	}
</script>