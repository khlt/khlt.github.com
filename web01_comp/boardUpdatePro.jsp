<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
int bno = Integer.parseInt(request.getParameter("bno"));
String btitle = request.getParameter("btitle");
String bcontent = request.getParameter("bcontent");
String author = request.getParameter("author");
Class.forName("org.mariadb.jdbc.Driver");
Connection conn = null;
PreparedStatement pstmt = null;
String sql = null;
int cnt = 0;
conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
sql = "update board set btitle=?, bcontent=?, author=?, regdate=now() where bno=?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, btitle);
pstmt.setString(2, bcontent);
pstmt.setString(3, author);
pstmt.setInt(4, bno);
cnt = pstmt.executeUpdate();
try{
if(cnt>0){
	response.sendRedirect("boardList.jsp");
}else{
	response.sendRedirect("boardUpdate.jsp=?"+bno);
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
