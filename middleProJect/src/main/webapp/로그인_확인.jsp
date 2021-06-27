<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.sql.*"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> Login_Check </title>
</head>
<body>
 
   
<%
//id passwd가져오기
request.setCharacterEncoding("utf-8");
String userID = request.getParameter("userID");
String userPassword = request.getParameter("userPassword");
ResultSet rs = null;
Connection con = null;
PreparedStatement pstmt = null;
String url = "jdbc:mysql://localhost:3306/user_infor";
String user = "root";
String pwd = "111111";
try{
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection(url, user, pwd);
 String sql = "select userPassword from 529userinfor where userID=?";
   pstmt = con.prepareStatement(sql);  //준비
   pstmt.setString(1, userID);   //query문 수정
   rs = pstmt.executeQuery();    //executeQuery query문 전달
 //5단계 데이터가 있으면 아이디있음
 if(rs.next()){
  //id있음
//   rs.getString(1);
  String dbPass=rs.getString("userPassword");
  if(userPassword.equals(dbPass)){
   //비밀번호비교 맞으면 세션값생성 "id"
   //    이동 main.jsp
   session.setAttribute("aaa", userID );
   %>
   <script type="text/javascript">
   location.href="http://localhost:8080/middleProJect/Main.jsp";
   </script>
   <%
  }else{
   %>
   <script type="text/javascript">
   alert("비밀번호 확인해주세요");
   history.back();
   </script><%
  }
 }else{
  %>
  <script type="text/javascript">
  alert("id 확인해주세요");
  history.back();
  </script><%
 }
}catch (Exception e) {
 e.printStackTrace();
}finally{
 //rs!=null : 기억장소가 확보되어 있다는 뜻
 if(rs!=null)try{rs.close();}catch(SQLException ex){}
 if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
 if(con!=null)try{con.close();}catch(SQLException ex){}
}
%>


</body>
</html>