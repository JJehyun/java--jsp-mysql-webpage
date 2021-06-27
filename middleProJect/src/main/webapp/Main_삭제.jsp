<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>삭제 Main 페이지</title>
</head>
<body>


<% 
   String id = request.getParameter("id");
   System.out.println(id);
   Connection con = null; 
   PreparedStatement stmt = null; 
   ResultSet rs = null;
   String url = "jdbc:mysql://localhost:3306/user_infor";
   String user = "root";
   String pw = "111111";
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection(url, user, pw);
   
   String query = "DELETE FROM 529table WHERE id = ?";
   stmt = con.prepareStatement(query);
   stmt.setString(1, id);
   stmt.executeUpdate();
   %>





<script>
location.href="http://localhost:8080/middleProJect/Main.jsp"
</script>

</body>
</html>