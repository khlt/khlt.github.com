<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/sub_common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.content { margin: 100px auto;}
h2 { text-align: center; }
</style>
</head>
<body>
<div class="wrap">
<header id="hd" class="panel-heading">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<h2>회원목록</h2>
	<table class="table">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>주소</th>
		</tr>
<%
	Connection conn = null;	//연결 정보를 저장하고, 연결할 객체
	//Statement stmt = null;	연결 상태를 유지할 객체(ON/OFF)
	PreparedStatement pstmt = null;
	ResultSet rs = null; 	//불어온 DB결과를 저장할 곳 ResultSet = 결과모음
	try {
		/* 드라이버로딩
		webapp\WEB-INF\lib\mariadb-java-client-3.0.4.jar 붙여넣기
		webapp\WEB-INF\lib\mysql-connector-java-8.0.28.jar 붙여넣기
		build path에서
		mariadb-java-client-3.0.4.jar, mysql-connector-java-8.0.28.jar 를
		외부 라이브러리로 등록
		Class.forName("org.mariadb.jdbc.Driver");
		driverURL = jdbc:mariadb://localhost:포트번호/데이터베이스명 
		*/

		//String driver = "jdbc:mariadb://localhost:3308/company";
		//String dbId = "root";
		//String dpPw = "1234";
		//conn = DriverManager.getConnection(driver, dbId, dpPw); //연결
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root", "1234");
		pstmt = conn.prepareStatement("select * from member");
		rs = pstmt.executeQuery();
		//String sql = "select * from member";
		//rs = stmt.executeQuery(sql); String으로 저장한 명령을 실행 = select문 = Query
		//stmt.executeUpdate(sql);  update, insert, delete -> select가 아닌경우 -> 숫자로 반환된다
		//0이거나 작으면 회원가입 x 1이상이면 뭔가 처리된거임.
		while(rs.next()){ //저장된 rs(결과셋)를 한 레코드씩 출력
			//String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			String address = rs.getString("address");
%>
			<tr>
				<td><%=rs.getString("id") %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
				<td><%=phone %></td>
				<td><%=address %></td>
			</tr>
<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		try {
			rs.close();
			//stmt.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();		
		}
	}
%>
</table>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>