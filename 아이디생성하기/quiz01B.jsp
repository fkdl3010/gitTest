<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% 
    	request.setCharacterEncoding("utf-8");
    	String name=request.getParameter("name");
    	String pw=request.getParameter("pw");
    	String id=request.getParameter("id");
    	String date = request.getParameter("date");
    %>
	<h3>이용약관</h3>
	----------------------------------------------------<br>
	1.회원 정보는 웹 사이트 운영을 위해서만 사용됩니다.<br>
	2.원치 않으 정보 제공을 하지 않을 수 있습니다.<br>
	3.다만 이 경우 정상적인 웹 사이트 이용이 제한됩니다.<br>
	-----------------------------------------------------<br>
	<br>
	위 약관에 동의하십니까?
	<br>
	<form action="/01_JSP/quiz/quiz01C.jsp">
		<input type="radio" value="y" name="agree" id="y"/>
		<label for="y">동의함</label>
		<input type="radio" value="n" name="agree" id="n"/>
		<label for="n">동의안함</label><br><br>
		<button>회원가입</button>
				
		<input type="hidden" name="name" value="<%=name %>"/>
		<input type="hidden" name="id" value="<%=id %>"/>
		<input type="hidden" name="pw" value="<%=pw %>"/>
		<input type="hidden" name="date" value="<%=date %>"/>
	</form>
	
</body>
</html>