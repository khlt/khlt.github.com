<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String sid = (String) session.getAttribute("uid");

Connection conn = null;
PreparedStatement pstmt = null;
int cnt = 0;
try{
	Class.forName("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	String sql = "delete from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, sid);	
	cnt = pstmt.executeUpdate();
	if(cnt>=1){
		out.println("<p>회원탈퇴가 완료되었습니다</p>");
		out.println("<a href='index.jsp'>홈으로가기</a>");
		session.invalidate();
	/* response.sendRedirect(encodeURI"index.jsp?msg="+msg); */
	}else{
		out.println("<p>회원탈퇴가 완료되지 못하였습니다</p>");
		response.sendRedirect("mypage.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	try {
		pstmt.close();
		conn.close();
	} catch(Exception e) {
		e.printStackTrace();	
	}
}
%>