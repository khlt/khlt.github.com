<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
    <%
    request.setCharacterEncoding("UTF-8");
    String uid = request.getParameter("uid");
    String upw = request.getParameter("upw");
    %>

		<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
	try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
		if(rs.next()){
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			if(upw.equals(pw) || upw==pw){
				session.setAttribute("uid",uid);
				session.setAttribute("name",name);
				response.sendRedirect("index.jsp");
			} else{
				response.sendRedirect("login.jsp");
			}
		}else{
			response.sendRedirect("login.jsp");
		}
		} catch(Exception e){
			response.sendRedirect("login.jsp");
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				
			}
		}

		%>
