<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
int bno = Integer.parseInt(request.getParameter("bno"));

Connection conn = null;
PreparedStatement pstmt = null;
int cnt = 0;
Class.forName("org.mariadb.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
String sql = "delete from board where bno=?";
pstmt = conn.prepareStatement(sql);
pstmt.setInt(1, bno);
cnt = pstmt.executeUpdate();
try{
	if(cnt>0){
		response.sendRedirect("boardList.jsp");
	}else{
		response.sendRedirect("boardDetail.jsp?bno="+bno);
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		conn.close();
		pstmt.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>