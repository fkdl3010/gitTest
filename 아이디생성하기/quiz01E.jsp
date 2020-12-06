<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String fileName= request.getParameter("fileName");
    	String path = "/Users/gil/gitTest/" + fileName;
    	boolean isDelete = false;
    	File file = new File(path);
    	
    	if(file.exists()){
    		file.delete();
    		isDelete = true;
    	}
    %>
<script>
	if(<%=isDelete%>){
		alert("정상적으로 탈퇴되었습니다.");
		location.href="/01_JSP/quiz/quiz01A.jsp";
	}else{
		alert('탈퇴하지 않았습니다.');
		history.back();
	}

</script>