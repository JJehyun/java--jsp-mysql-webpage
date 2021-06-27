<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
 <html>
  <head>
     <meta charset="utf-8">
     <link href="stylejs/myinformation.css" rel="stylesheet">
       <link rel="preconnect" href="https://fonts.gstatic.com">
       <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
       <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      </head>
    <body>
    <%
    String myuserID = (String) session.getAttribute("aaa");
    UserDAO DAO =new UserDAO();
    String userinforname= DAO.myinforname(myuserID);
    String userinforemail= DAO.myinforemail(myuserID);
    String userinforage= DAO.myinforage(myuserID);
    String userinforimg= DAO.myinforimg(myuserID);
  
 
    
    %>
<%
System.out.println(myuserID);
%>
      <div class="menu-area" style="width:100%;">
          <ul>
            <li><a href="http://localhost:8080/middleProJect/Main.jsp" style="width:320px;">코딩 메모장</a></li>
            <li><a href="#" style="z-index:99">홈으로</a><ul class="dropdown-1" style="z-index:99">
              <li><a href="#" style="z-index:99">service one</a></li>
              <li><a href="#" style="z-index:99">service two</a></li>
              <li><a href="#" style="z-index:99">service three</a></li></ul>
            </li>
            <li><a href="#" style="z-index:99">게시판 3개</a>
              <ul class="dropdown-1" style="z-index:99">
                <li><a href="#" style="z-index:99">service one</a></li>
                <li><a href="#" style="z-index:99">service two</a></li>
                <li><a href="#" style="z-index:99">service three</a>
                  <ul class="dropdown-2">
                    <li><a href="#">service four</a></li>
                    <li><a href="#">service five</a></li>
                    <li><a href="#">service six</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="#" style="z-index:99">사이드 2개의 2개</a><ul class="dropdown-1" style="z-index:99">
              <li><a href="#" style="z-index:99">service one</a></li>
              <li><a href="#" style="z-index:99">service two</a>  <ul class="dropdown-2">
                  <li><a href="#" style="z-index:99">service four</a></li>
                  <li><a href="#" style="z-index:99">service five</a></li></ul></li></ul>
            </li>
            <li><a href="#" style="z-index:99">사이드3개</a>
              <ul class="dropdown-1" style="z-index:99">
                <li><a href="#" style="z-index:99">service one</a></li>
                <li><a href="#" style="z-index:99">service two</a></li>
                <li><a href="#" style="z-index:99">service three</a></li></ul>
            </li>
          </ul>
        </div>

        <div style="background-color:#6c757d; width:100%;"><span style="background-color:#6c757d;margin-left: 30px;">코딩 게시판 > 회원 정보 > 정보 수정</span></div>





<div id="memberinformation_control">
        <ul class="sidebar-menu">
           <li><span class="nav-section-title"></span></li>
           <li class="have-children"><a href="#"><span class="fa fa-university"></span>codeing memo</a>
             <ul>
               <li><a href="#">css</a></li>
               <li><a href="#">html</a></li>
               <li><a href="#">javascript</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-tags"></span>java</a>
             <ul>
               <li><a href="#">라이브러리</a></li>
               <li><a href="#">jsp 관련</a></li>
               <li><a href="#">기타</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-trophy"></span>데이터베이스</a>
             <ul>
               <li><a href="#">mysql</a></li>
               <li><a href="#">예시</a></li>
               <li><a href="#">기타</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-gavel"></span>코드 관련 웹</a>
             <ul>
               <li><a href="#">Add Jury</a></li>
               <li><a href="#">View Juries</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-user-o"></span>회사 업무 관련</a>
             <ul>
               <li><a href="#">회사 스케줄</a></li>
               <li><a href="#">할 일 관리</a></li>
               <li><a href="#">기타 등등</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-user-o"></span>영화, TV 기타 등등</a>
             <ul>
               <li><a href="#">영화 일정</a></li>
               <li><a href="#">TV 일정</a></li>
               <li><a href="#">기타 등등</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-user-o"></span>Author</a>
             <ul>
               <li><a href="#">웹 페이지</a></li>
               <li><a href="#">기타</a></li>
             </ul>
           </li>
           <li><a href="#"><span class="fa fa-picture-o"></span>기타1</a></li>
           <li class="have-children"><a href="#"><span class="fa fa-flag"></span>기타1</a>
             <ul>
               <li><a href="#">View Judging points</a></li>
               <li><a href="#">Create Acceptances List</a></li>
               <li><a href="#">Create Awarded List</a></li>
               <li><a href="#">View Candidates for Awards</a></li>
               <li><a href="responsive_table.html">Send Report Cards</a></li>
             </ul>
           </li>
           <li class="have-children"><a href="#"><span class="fa fa-flag"></span>게임</a>
             <ul>
               <li><a href="#">View Judging points</a></li>
               <li><a href="#">Create Acceptances List</a></li>
               <li><a href="#">Create Awarded List</a></li>
               <li><a href="#">View Candidates for Awards</a></li>
               <li><a href="responsive_table.html">Send Report Cards</a></li>
             </ul>
           </li>
         </ul>
         <div id="member_div_box">

           <div id="member_div_box_left"></div>

           <div id="member_div_box_center">
               <span style="font-size:35px;">프로필 수정</span>
               <span>코딩 게시판 회원정보를 수정할 수 있습니다.</span>
               <table style="margin-top:8px;">
               <%if(userinforimg == null){ %><form action="회원정보_확인.jsp" enctype="multipart/form-data" method="post">
                 <tr><th id="user_Profile">프로필 사진</th><th style="text-align:center;"><img width="100" src="http://localhost:8080/middleProJect/userPicture/hacker.jpg";  /><div style="display:flex;position:relative; left:23%; "><input class="gray_button" type="file" name="fileName" style="width:120px;padding-right: 26px;"></input><button class="gray_button" style="width:90px;margin-left: 5px;">사진 삭제</button></div></th> </tr><%}else{%><form action="회원정보_확인.jsp" enctype="multipart/form-data" method="post">
                 <tr><th id="user_Profile">프로필 사진</th><th style="text-align:center;"><img width="100" src="http://localhost:8080/middleProJect/userPicture/<%=userinforimg %>";  /><div style="display:flex;position:relative; left:23%; "><input class="gray_button" type="file" name="fileName" style="width:120px;padding-right: 26px;"></input><button class="gray_button" style="width:90px;margin-left: 5px;">사진 삭제</button></div></th> </tr><%} %>
                 <tr><td id="user_inforname">이름</td><td><center><input type="text" name="username" style="border:2px solid gray; background-color:black;color:white; height:20px;" value="<%=userinforname %>"/></center></td></tr>
                 <tr><td id="user_inforname">이메일</td><td><center><input type="email" name="useremail" style="border:2px solid gray; background-color:black;color:white; height:20px;" value="<%=userinforemail %>" /></center></td></tr>
                  <tr><td id="user_inforname">나이</td><td><center><input type="text" name="userage" style="border:2px solid gray; background-color:black;color:white; height:20px;" value="<%=userinforage %>" /></center></td></tr>
               </table>
               <div style="display:flex;margin:0 auto"><input type="submit" class="gray_button" style="width:60px; value="등록"></input><a href="http://localhost:8080/middleProJect/Main.jsp" class="gray_button" style="width:25px;margin-left:15px; text-align:center;">취소</a></div></form>
               <div style="border:0px solid white; height:100px;"></div>
               <span style="text-align:center;">개인정보처리방침 |  책임의 한계와 법적 고지 | 회원정보 고객센터 </span>
               <span style="text-align:center;"> <strong style="margin-right:10px;">코딩 게시판</strong>Copyright © NAVER Corp. All Rights Reserved.</span>
           </div>

           <div id="member_div_box_right"></div>


         </div>
         <script>
         $(document).ready(function(){

  $(".sidebar-menu > li.have-children a").on("click", function(i){
      i.preventDefault();
    if( ! $(this).parent().hasClass("active") ){
      $(".sidebar-menu li ul").slideUp();
      $(this).next().slideToggle();
      $(".sidebar-menu li").removeClass("active");
      $(this).parent().addClass("active");
    }
    else{
      $(this).next().slideToggle();
      $(".sidebar-menu li").removeClass("active");
        }
    });
});
         </script>
    </body>
</html>