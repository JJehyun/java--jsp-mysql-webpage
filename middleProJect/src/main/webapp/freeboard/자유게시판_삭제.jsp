<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<%@page import="middleProJect.Freeboard"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자유게시판 삭제 페이지</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String titlenumber = request.getParameter("id");
String delete = request.getParameter("delete");
Freeboard Free = new Freeboard();
Free.Freedetaildelete(delete);

%>





<script>
location.href="http://localhost:8080/middleProJect/freeboard/자유게시판_상세페이지.jsp?id=<%=titlenumber%>";

</script>
</body>
</html>