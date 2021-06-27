<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인창 댓글 확인 창</title>
</head>
<body>
<p>메인창 댓글 확인 창</p>
<%request.setCharacterEncoding("utf-8");
String contentss = request.getParameter("contentss");
String nameID = (String) session.getAttribute("aaa"); 
UserDAO DAO =new UserDAO();
DAO.maincontents(nameID,contentss);
%>

<script>
location.href="http://localhost:8080/middleProJect/Main.jsp";
</script>
</body>
</html>