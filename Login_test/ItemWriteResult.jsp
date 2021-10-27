<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%!Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "HR";
	String pass = "123123";
	String sql = "insert into item values(?, ?, ?)";%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 입력 완료</title>
</head>
<body>

<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String desc = request.getParameter("description");
		
		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);
			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, name);
			pstmt.setInt(2, Integer.parseInt(price));
			pstmt.setString(3, desc);
			
			//(5단계) SQL문을 실행하여 결과 처리
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//(6단계) 사용한 리소스 해제
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//finally의 끝
	%>
	<h3>정보 입력 성공</h3>
	<a href="itemWite.jsp">  item list 전체 보기 </a> 


</body>
</html>