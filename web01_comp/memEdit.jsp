<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int cnt = 0;
	String msg;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "update member set pw=?, name=?, phone=?, address=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, upw);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, uid);
		
		cnt = pstmt.executeUpdate();
		if(cnt>=1){
			msg = "sucess~!";
			response.sendRedirect("index.jsp?msg="+msg);
		/* response.sendRedirect(encodeURI"index.jsp?msg="+msg); */
		}else{
			msg = "failure~!54321.";
			response.sendRedirect("index.jsp?msg="+msg);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
%>
