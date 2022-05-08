<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/sub_common.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
h2 { margin:150px auto 100px auto; }
</style>
</head>
<body>
	<header id="hd">
		<div class="hd_wrap">
			<%@ include file="nav.jsp" %>
		</div>
	</header>
	<h2 style="text-align: center;">게시판 글 수정</h2>
	<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from board where bno=?";
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,bno);
	rs = pstmt.executeQuery();
	try{
		if(rs.next()){
			%>
	<div class="content">
	<form action="boardUpdatePro.jsp" method="post" name="updateform" onsubmit="writecheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<td class="necessary">글 번호</td>
					<td><%=bno%><input type="hidden" name="bno" id="bno" value="<%=bno%>"></td>
				</tr>
				<tr>
					<td class="necessary">제목</td>
					<td><input type="text" name="btitle" id="btitle" value="<%=rs.getString("btitle") %>" required>
				</tr>
				<tr>
					<td class="necessary">글내용</td>
					<td><textarea cols="80" rows="6" name="bcontent" id="bcontent" required><%=rs.getString("bcontent") %></textarea></td>
				</tr>
				<tr>
					<td class="necessary">작성자</td>
					<td><%=rs.getString("author") %><input type="hidden" value="관리자" name="author"></td>
				</tr>
				<tr>
					<td class="necessary">작성일</td>
					<td><%=rs.getDate("regdate") %>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn btn-primary" value="수정">
						<input type="reset" class="btn btn-primary">
						<a href="boardList.jsp" class="btn btn-primary" >목록</a>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			conn.close();
			pstmt.close();
			rs.close();
		}catch(Exception e){
				e.printStackTrace();
			}
		}
	%>
	</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>