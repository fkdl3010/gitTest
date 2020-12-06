<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Date date = null;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	label{
		display: inline-block;
		width: 100px;
	}
	
</style>
</head>
<body>
	<form action="/01_JSP/quiz/quiz01B.jsp">
		<label for="id">아이디</label>
		<input type="text" name="id" id="id" /><br>
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" id="pw" /><br>
		<label for="name">이름</label>
		<input type="text" name="name" id="name" /><br>
		<input type="hidden" value="<%= date=new Date(System.currentTimeMillis()) %>" name="date" />
		<button>회원가입</button>
	
	</form>
</body>
</html>