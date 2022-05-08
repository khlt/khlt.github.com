<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String btitle = request.getParameter("btitle");
	String bcontent = request.getParameter("bcontent");
	String author = request.getParameter("author");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	String sql = "insert into board(btitle,bcontent,author) values(?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, btitle);
	pstmt.setString(2, bcontent);
	pstmt.setString(3, author);
	int cnt = 0;
	cnt = pstmt.executeUpdate();
	Class.forName("org.mariadb.jdbc.Driver");
	
	
	try{
	if(cnt>0){
		response.sendRedirect("boardList.jsp");
	}else{
		response.sendRedirect("boardInsert.jsp");
	}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
