<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	
	    
		String agree = request.getParameter("agree");
		String fileName = "";
		boolean isSuccess = false;
		
		if(agree.equals("y")){ // 이전내용에서 동의한 경우
			String name=request.getParameter("name");
			String pw=request.getParameter("pw");
			String id=request.getParameter("id");
			String date = request.getParameter("date");
			
			fileName = id + ".txt";
			String path = "/Users/gil/gitTest/" + fileName;
			
			
			BufferedWriter bw =  null;
			
			try{
				bw = new BufferedWriter(new FileWriter(path));
				
				bw.write("가입 아이디: " + id);
				bw.newLine();
				bw.write("가입 비밀번호: " + pw);
				bw.newLine();
				bw.write("가입 이름: " + name);
				bw.newLine();
				bw.write("가입 날짜: " + date);
				
				isSuccess = true;
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(bw !=null){ bw.close();};
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			
		}
		// 파일 생성 성공유무를 리다이렉트로 전달해주자.
		// 파일명도 알아야 되니 파일명도 전달해주자.
		response.sendRedirect("/01_JSP/quiz/quiz01D.jsp?isSuccess=" + isSuccess +"&fileName="+ fileName);
		
		
    %>
