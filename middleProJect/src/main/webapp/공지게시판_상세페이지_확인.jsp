<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>공지게시판_상세페이지_확인</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String titlenumber = request.getParameter("id");  //페이지 id
String contentss = request.getParameter("contentss"); // 댓글 내용
String nameID = (String) session.getAttribute("aaa"); //글쓴이 아이디

UserDAO DAO = new UserDAO();
DAO.NoticeDetail(contentss,titlenumber,nameID);


%>



<script>
location.href="http://localhost:8080/middleProJect/공지게시판_상세페이지.jsp?id=<%=titlenumber%>"
</script>
</body>
</html>