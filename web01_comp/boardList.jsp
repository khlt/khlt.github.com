<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/sub_common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="datatables.min.css">
<style>
.content { margin:150px auto; }
h2 { margin:150px auto 50px auto; text-align:center; }
</style>
</head>
<body>
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
});
</script>
<div class="">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>게시판 목록</h2>
		<table class="table" id="myTable">
			<thead>
				<tr>
				    <th>글번호</th>
				    <th>제목</th>
				    <th>작성자</th>
				    <th>작성일</th>
				</tr>
			</thead>
			<tbody>
	<!-- DB 연결문 -->
	<%@ include file="connectPool.conf" %>
	<!-- 반복 실행 구간 시작 -->
	<%
		sql = "select * from board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
	%>
				<tr>
					<td><%=rs.getInt("bno") %></td>
					<td><a href='boardDetail.jsp?bno=<%=rs.getInt("bno") %>'><%=rs.getString("btitle") %></a></td>
					<td><%=rs.getString("author") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
	 <!-- 반복 실행 구간 종료-->
	 <%
		}
	 %>
	 <%@ include file="connectClose.conf" %>
	 <%
	 	if(sid.equals("admin")){
	 			%>
	 			<tr>
	 				<td colspan="3"><a href="boardInsert.jsp" class="btn btn-primary">글쓰기</a></td>
	 			</tr>
	 			<%
	 	}else{
				out.println("관리자만 접근할 수 있습니다.");
	 	}
	 %>
			</tbody>
		</table>
	</div>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>