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
session.invalidate();
%>
<script>
alert("로그 아웃 되었습니다.");
location.href="08_loginForm2.jsp";
</script>
</body>
</html>