<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 가입 확인 창</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String userID = request.getParameter("userID");
String name = request.getParameter("name");
String userPassword = request.getParameter("userPassword");
String email = request.getParameter("email");
String age = request.getParameter("age");

System.out.println(userID);

  UserDAO DAO = new UserDAO(); 
  DAO.dbcon();
  System.out.println("db연결 확인!");
  int result = DAO.joinCheck("userID");
  if(result == 1){
	  PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('중복된 아이디가 있습니다.');");
		script.println("location.href='http://localhost:8080/middleProJect/회원가입.jsp'");
		script.println("</script>");
		script.close();
  }else{
	  DAO.joininsert(userID, userPassword, age, email, name);
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='http://localhost:8080/middleProJect/회원가입.jsp'");
		script.println("</script>");
		script.close();   
  }

  
  
  
  
  
  
  
  
  

%>
</body>
</html>