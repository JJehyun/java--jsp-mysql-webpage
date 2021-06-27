<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원정보 확인</title>
</head>
<body>
    <%
    String myuserIDcheck = (String) session.getAttribute("aaa");%>

<%   String username="";
	String useremail="";
	String userage="";
	String filename1=null; %>
<%

   String uploadPath=request.getRealPath("userPicture");
   
   int size = 10*1024*1024;


   
   try{
	   
	   
	   
           MultipartRequest multi=new MultipartRequest(request,
                     uploadPath,
                     size, 
                     "utf-8",
            new DefaultFileRenamePolicy());      //파일 업로드 완료
      
            Enumeration files=multi.getFileNames();  
            String file1 =(String)files.nextElement();              //첫번째 파일 name값 반환함(file1 = fileName1111(파라미터))
            filename1=multi.getFilesystemName(file1);				  //첫번째 파일 name값을 파일이름으로 변경(test.jpg 실제이름)
      		System.out.println(filename1);
      		String myuserID = (String) session.getAttribute("aaa");
      		UserDAO DAO =new UserDAO();
      		if(filename1 ==null){System.out.println("사진 없음");}else{
      		DAO.Updateimg(myuserID,filename1);}
      		
      		
      		username=multi.getParameter("username");
      		useremail=multi.getParameter("useremail");
      		userage=multi.getParameter("userage");
      		DAO.Updateinformation(myuserIDcheck,username,useremail,userage);
      		
   }catch(Exception e){
      e.printStackTrace();
   }
%>







<p>회원정보 확인</p>

   <script type="text/javascript">
   location.href="http://localhost:8080/middleProJect/Main.jsp";
   </script>
</body>
</html>