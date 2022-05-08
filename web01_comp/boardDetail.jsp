<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개시판 글보기</title>
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
	<div class="content" class="panel-body">
		<div class="container-fluid">
			<h2 style="text-align: center;">게시판 글보기</h2>
			<table class="table">
				<tbody>
					<%
					request.setCharacterEncoding("UTF-8");
					int bno = Integer.parseInt(request.getParameter("bno"));
					Class.forName("org.mariadb.jdbc.Driver");
					Connection conn = null;
					PreparedStatement pstmt = null;
					conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
					String sql = "select * from board where bno=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, bno);
					ResultSet rs = null;
					rs = pstmt.executeQuery();
					try{
					if(rs.next()){
						%>
						<tr>
							<th>글번호</th>
							<td><%=rs.getInt("bno") %></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><%=rs.getString("btitle") %></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><%=rs.getString("bcontent") %></td>
						</tr>
						<tr>
							<th>작성일</th>
							<td><%=rs.getDate("regdate") %></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><%=rs.getString("author") %></td>
						</tr>
						<tr>
						<td colspan="2">
						<%
						if(sid.equals("admin")){
						%>
								<a href="boardUpdate.jsp?bno=<%=rs.getInt("bno") %>" class="btn btn-primary">수정</a>
								<a href="boardDeletePro.jsp?bno=<%=bno %>" class="btn btn-primary">삭제</a>
						<%}%>
								<a href="boardList.jsp" class="btn btn-primary">목록</a>
						</td>
						</tr>
						<%}
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
				</tbody>
			</table>
		</div>
	<footer id="ft">
		<%@ include file="ft.jsp" %>
	</footer>
	</div> 
</body>
</html>