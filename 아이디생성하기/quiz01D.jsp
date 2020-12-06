<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	boolean isSuccess = Boolean.parseBoolean(request.getParameter("isSuccess"));
    	String fileName = request.getParameter("fileName");
    	String line = "";
    	String message = "";
    	if(isSuccess){
    		BufferedReader br = null;
    		
   		try{
    			br = new BufferedReader(new FileReader("/Users/gil/gitTest/" + fileName));
    			
    			while(true){
    				line = br.readLine();
    				
    				if(line == null){
    					break;
    				}
    				message += line + "<br/>";
    			}
    		}catch(Exception e){
    			e.printStackTrace();
    		}finally{
    			if(br != null){ br.close();}
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(isSuccess){	%>
		<h3>가입되었습니다.</h3>
		<%=message %>
		<form action="">
			<input type="button" value="탈퇴하기" name="delete" onclick="fn_delete(this.form)" />
			<input type="hidden" value="<%=fileName %>" name="fileName" />
		</form>
	<%}else{ %>
		<h3>가입되지 않았습니다.</h3>
		<a href="/01_JSP/quiz/quiz01A.jsp">다시 가입하기</a>
	<%} %>
	
	<script type="text/javascript">
		function fn_delete(f){
			
			if(confirm("탈퇴하시겠습니까?")){
				f.action="/01_JSP/quiz/quiz01E.jsp";
				f.submit();
			}
		}
	</script>
</body>
</html>