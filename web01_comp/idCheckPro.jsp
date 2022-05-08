<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("id");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uid);
		rs = pstmt.executeQuery();
		if(rs.next()){
			out.println("<p>해당 아이디는 사용 불가</p>");
		}else{
			out.println("<p>사용 가능한 아이디입니다.</p>");
			out.println("<a href='javascript:apply(\""+uid+"\")'>"+uid+"[적용]</a>");	
			out.println("<p>적용을 눌러야만 입력하신 아이디 사용 가능합니다.</p>");
		%>
		<script>
		function apply(rid){
			opener.document.joinform.uid.value = rid;
			opener.document.joinform.idck.value = "yes";
			window.close();
		}
		</script>
		
		<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
		rs.close();
		conn.close();
		pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		}
%>
</body>
</html>