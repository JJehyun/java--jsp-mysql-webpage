<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<%@page import="middleProJect.Freeboard"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자유게시판 댓글 확인</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String connect = request.getParameter("id");
String contents = request.getParameter("contentss");
String nameID = (String) session.getAttribute("aaa"); 

Freeboard Free = new Freeboard();
Free.Freedetailinsert(nameID,contents,connect);
%>




<script>
location.href="http://localhost:8080/middleProJect/freeboard/자유게시판_상세페이지.jsp?id=<%=connect%>";
</script>
</body>
</html>