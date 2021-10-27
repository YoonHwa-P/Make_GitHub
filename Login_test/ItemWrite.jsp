<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet " %>
    <%@page import="java.sql.Statement " %>
    <%@page import="java.sql.Connection " %>
    
     <%!
 	//선언부는 첫 방문자에 의해 단 한번 수행 
   Connection Con=null;
   Statement St = null;
   ResultSet Rs= null;
   //데이터베이스 연결
   String url= "jdbc:oracle:thin:@localhost:1521:XE";
   String uid ="HR";
   String pass="123123";
   String sql="select * from item";
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력된 아이템 정보 출력</title>
</head>
<body>

<h2>입력 완료된 정보</h2>
<br>
	<table width='800' border ='1'>
	 <tr>
		<td>이 름 </td>
		<td>가 격 </td>
		<td>설 명</td>
		</tr>
	 <%
	 try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				/* JDBC 드라이버 로딩 */
				Con = DriverManager.getConnection(url, uid, pass);
				/* 연결 객체 생성, con에 변수 저장 = con을 이용하여 쿼리를 날릴 수 있다 */
				St = Con.createStatement();
				/* 쿼리문 실행하기 위한 객체 생성 */
				Rs= St.executeQuery(sql);
				/* Rs 에 저장  */
				while (Rs.next()){
					/*커서를 이동하기 때문에 Rs객체에 next를 이용하여 감 */
					out.println("<tr>");
					out.println("<td>"+ Rs.getString("NAME") +"</td>");
					out.println("<td>"+ Rs.getString("price") +"</td>");
					out.println("<td>"+ Rs.getString("description") +"</td>");
					out.println("</tr>");
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try{
					if(Rs != null)
						Rs.close();
					if(St != null)
						St.close();
					if (Con != null)
						Con.close();
					/*마지막에는 모두 닫아 주어야 한다  */
				} catch (Exception e){
					e.printStackTrace();
				}
			}
		%>
			</table>
</body>
</html>