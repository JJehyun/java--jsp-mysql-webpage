<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인 창</title>
  <link href="stylejs/login.css" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
  <div class="login">
    <div class="login-triangle"></div>

    <h2 class="login-header">Log in</h2>

    <form class="login-container" action="http://localhost:8080/middleProJect/로그인_확인.jsp" method="post">
      <p><input type="userID" placeholder="userID" name="userID"></p>
      <p><input type="password" placeholder="Password" name="userPassword"></p>
      <p><input type="submit" value="Log in"></p>
      <span>&nbsp;&nbsp;</span><a href="#">회원 가입</a><span>&nbsp;&nbsp;</span><a href="#">비밀번호 찾기</a>
    </form>
  </div>
</body>
</html>