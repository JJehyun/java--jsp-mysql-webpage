<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%@page import="middleProJect.UserDAO"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>자유게시판 글쓰기 확인 page</title>
</head>
<body>


<%  
String namenickname = (String) session.getAttribute("aaa"); //admin
	String title="";
	String content="";
	String filename1=null; %>
<%
   String uploadPath=request.getRealPath("/freeimg");
   
   int size = 10*1024*1024;


   
   try{
      MultipartRequest multi=new MultipartRequest(request,
                     uploadPath,
                     size, 
                     "utf-8",
            new DefaultFileRenamePolicy());      //파일 업로드 완료
      
      
      title=multi.getParameter("title");
      content=multi.getParameter("content");
      Enumeration files=multi.getFileNames();
      
      String file1 =(String)files.nextElement();              //첫번째 파일 name값 반환함(file1 = fileName1111(파라미터))
      filename1=multi.getFilesystemName(file1);				  //첫번째 파일 name값을 파일이름으로 변경(test.jpg 실제이름)
      UserDAO DAO = new UserDAO();
   	  DAO.Freeinsert(namenickname,title,content,filename1);
   }catch(Exception e){
      e.printStackTrace();
   }
%>


<script>
location.href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp";
</script>

</body>
</html>