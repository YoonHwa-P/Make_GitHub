<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id="yj182637";
String pwd="1234";
String name="김유진";
if(id.equals(request.getParameter("id")) &&
pwd.equals(request.getParameter("pwd")) ){
session.setAttribute("loginUser", name);
response.sendRedirect("08_main2.jsp");
}
else{
	response.sendRedirect("08_loginForm2.jsp");
}
%>