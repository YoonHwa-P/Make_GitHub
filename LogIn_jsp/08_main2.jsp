<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("loginUser")==null){
response.sendRedirect("08_loginForm2.jsp");
}else{
%>
<%=session.getAttribute("loginUser")%>님 안녕하세요!<br>
저희 홈페이지에 방문해 주셔서 감사합니다.<br>
즐거운 시간 되세요....<br>
<form method="post" action="08_logout2.jsp">
<input type=submit value="로그아웃">
</form>
<%
}
%>
</body>
</html>