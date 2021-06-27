<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <link href="stylejs/style.css" rel="stylesheet">
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
  <body>
  <%String nameID = (String) session.getAttribute("aaa"); 

   Connection con = null; 
   PreparedStatement stmt = null; 
   ResultSet rs = null;
   String url = "jdbc:mysql://localhost:3306/user_infor";
   String user = "root";
   String pw = "111111";
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection(url, user, pw);%>
    <a href="#" style="margin-left: 15px;">jehyunss.org</a>
    <a href="#" id="top_login_fom">로그아웃</a>
    <a href="http://localhost:8080/middleProJect/회원정보.jsp" id="top_login_fom">회원정보</a>
    <a href="#" id="top_login_fom">도움말</a>
    <center><div style="font-size:50px;" style="z-index:99">코딩 게시판</div></center>
    <center><div style="font-size:15px; margin-right: 108px;" style="z-index:99">conding everybody</div></center>
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
          <li><a href="http://localhost:8080/middleProJect/공지게시판.jsp" style="z-index:99">공지 게시판</a></li>
          <li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp" style="z-index:99">자유 게시판</a></li>
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

  <div style="background-color:#6c757d; width:100%;"><span style="background-color:#6c757d;margin-left: 30px;">코딩 게시판 > 언어 > JAVA</span></div>




<div id="middle_control" style="width:100%; height:620px; display:flex;">
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
 </ul><div style="display:flex;flex-direction: column; position:relative; left:23%; width:100%">
<div id="mainjehyuntext">제현 전용 코딩 게시판</div>
<div id="today_date"><span id="year_text"></span><span>년</span>&nbsp;<span id="month_text"></span><span>월</span>&nbsp;<span id="date_text"></span><span>일</span>&nbsp;&nbsp;&nbsp<span>l</span>&nbsp;&nbsp;&nbsp<span>공개</span></div>
<div id="top_border"></div>
<span id="many_use_site">많이 쓰는 참고 사이트 (코딩 관련)<span>
  <a href="#" style=" float:right;">more+</a>
  <div id="silder_auto_box">
  <div class="rolling_panel" style="color:white; position:relative; left:5%;">
            <ul style="margin-top:20px;">
                  <li><div id="movie_content"><img src="http://localhost:8080/middleProJect/update/api_store_1.png" alt="이미지" width="180px" /> <a href="https://www.apistore.co.kr/api/apiList.do /"> API 모음</a></div></li>
                  <li><div id="movie_content"><img src="http://localhost:8080/middleProJect/update/color_site_1.png" alt="이미지" width="200px" /> <a href="https://coolors.co/palettes/trending/"> COLOR 모음</a></div></li>
                  <li><div id="movie_content"><img src="http://localhost:8080/middleProJect/update/googlefont_site_1.png" alt="이미지" width="180px" /><a href="https://fonts.google.com/"> FONT 모음</a></div></li>
                  <li><div id="movie_content"><img src="http://localhost:8080/middleProJect/update/icon_site_1.png" alt="이미지" width="180px" /><a href="https://tablericons.com/"> icon 모음</a></div></li>
                  <li><div id="movie_content"><img src="http://localhost:8080/middleProJect/update/illustration_site_1.png" alt="이미지" width="180px" /><a href="https://www.flaticon.com/free-icon/snowy_334557 /"> illustration 모음</a></div></li>
            </ul>
      </div>
</div>
<div id="sitebox_underbar"></div>
</div>
</div>


 <section id="notice_table1">
  <span>공지 사항</span>

  <table cellpadding="0" cellspacing="0" border="0" id="left_table" style="height:30px; width:38.5%;text-align: left;">
    <tbody>
      <a href="http://localhost:8080/middleProJect/공지게시판.jsp" id="notice_table1_more">more+</a>
      <tr style="background-color: rgba(255,255,255,0.3);">
        <th id="tbl-header_td">NO.</th>
        <th id="tbl-header_td" style="width:40%;">제목</th>
        <th id="tbl-header_td">작성자</th>
        <th id="tbl-header_td">작성</th>
        <th id="tbl-header_td">조회수</th>
      </tr>
      </tbody>
  </table>
   <div class="tbl-content">
     <table cellpadding="0" cellspacing="0" border="0" id="left_table" style="height:500px;width:500px;">
       <tbody>
        <%String querytwo = "select id,title,userID,counter,DATE_FORMAT(time,'%m-%d') from 529notice ORDER BY id DESC;";
         stmt = con.prepareStatement(querytwo);
         rs = stmt.executeQuery(); 
         while(rs.next()) { %>
         <tr>
           <th id="tbl-header_td"><%=rs.getInt(1)%></th>
           <th id="tbl-header_td"><div style="display:flex;"><button class="Twinklebutton">공지</button><a href="http://localhost:8080/middleProJect/공지게시판_상세페이지.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a></div></th>
           <th id="tbl-header_td"><%=rs.getString(3)%></th>
           <th id="tbl-header_td"><%=rs.getString(4)%></th>
           <th id="tbl-header_td"><%=rs.getString(5)%></th>
         </tr><%} %>
       </tbody>
     </table>
   </div>


   <table id="main_right_table">
    <span id="main_right_table_textone">자유게시판</span><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp" id="main_right_table_texttwo">more+</a>
     <thead>
       <tr>
         <th id="main_right_tableth">NO.
         <th id="main_right_tableth" style="width:47%">제목

         <th id="main_right_tableth">작성자
         <th id="main_right_tableth">조회수
     </thead>
     <tbody><%String queryfour = "select id,title,name,counter from 529freeboard ORDER BY counter DESC limit 0,5";
     stmt = con.prepareStatement(queryfour);
     rs = stmt.executeQuery(); 
     while(rs.next()) { %>
       <tr id="main_right_tabletr">
         <td id="main_right_tabletd"><%=rs.getString(1)%>
         <td id="main_right_tabletd"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판_상세페이지.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a>
         <td id="main_right_tabletd"><%=rs.getString(3)%>
         <td id="main_right_tabletd"><%=rs.getString(4)%>
        </tr>
		<%} %>
     </tbody>
   </table>
   <div id="table_under_border"></div>
   
  <span style="position:relative;right:12%;">comment</span>
  <div class="container_coment" style="position:relative; right:12%;">
    <form action="http://localhost:8080/middleProJect/메인창_댓글.jsp" method="post">
      <div class="form-group">
        <textarea name="contentss" class="form-control status-box" rows="3" cols="135" placeholder="댓글을 입력해주세요!"></textarea>
      </div>
      <div style="border:0px solid white; height:20px;position:relative; left:15%;">
      <div class="button-group pull-right" style="float:right">
      <p class="counter_comment">250</p>
      <input type="submit" href="http://localhost:8080/middleProJect/메인창_댓글.jsp" class="btnconment btn-primary" value="post"></input>
    </div>
    </div>
    </form>

    
  </div>
  <div id="commentbox_underline"></div>
  
  <ol style="position:relative; right:12%;">
  <li id="member_information">
  <div><img src="http://localhost:8080/middleProJect/update/api_store_1.png" alt="이미지" width="60px"; height="60px" /></div>
  <div id="comment_userid_columnflex">
  <div id="id_time_box" style="display:flex;">
  <span>&nbsp;&nbsp;</span><div id="userID" style="color:red">관리자</div><span>&nbsp;&nbsp;</span><div id="userID_timecreate">!-!-!-!</div>      <a href="#" style="color:red;position:relative; right:-427%; ">X</a>
  </div>
  <span>&nbsp;&nbsp;메인 게시판 댓글창 입니다.</span>
  <span style="position:relative; right:-447%; bottom:15px; "><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-message-circle" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
  <line x1="12" y1="12" x2="12" y2="12.01" />
  <line x1="8" y1="12" x2="8" y2="12.01" />
  <line x1="16" y1="12" x2="16" y2="12.01" />
  </svg> 답글달기</span>
  </div>
  </li>
   <%   
   String query = "select * from 529table INNER JOIN 529userinfor ON 529table.userID = 529userinfor.userID order by 529table.id desc;";
   stmt = con.prepareStatement(query);
   rs = stmt.executeQuery();
   while(rs.next()) {
   %>
   <li id="member_information" style="margin-top:10px;">
  <div><%if(rs.getString(12)== null){%> <img src="http://localhost:8080/middleProJect/userPicture/hacker.jpg" alt="이미지" width="60px"; height="60px" /> <%}else{ %><img src="http://localhost:8080/middleProJect/userPicture/<%=rs.getString(12)%>" alt="이미지" width="60px"; height="60px" /><%} %></div>
  <div id="comment_userid_columnflex" style="width:860px;">
  <div id="id_time_box" style="display:flex;justify-content:space-between;">
  <div style="display:flex;"><span>&nbsp;&nbsp;</span><div id="userID"><%=rs.getString(11)%></div><span>&nbsp;&nbsp;</span><div id="userID_timecreate"><%=rs.getString(5)%></div> </div>     <a href="http://localhost:8080/middleProJect/Main_삭제.jsp?id=<%=rs.getString(1)%>" style="color:red;float:left;">X</a></div>
  <span>&nbsp;&nbsp;<%=rs.getString(3)%></span>
  <span style="position:relative; left:91%;bottom: 15px;"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-message-circle" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
  <line x1="12" y1="12" x2="12" y2="12.01" />
  <line x1="8" y1="12" x2="8" y2="12.01" />
  <line x1="16" y1="12" x2="16" y2="12.01" />
  </svg> 답글달기</span>
  </div>
  </li>
   
   
   <%} %>
   
   
   
   
   
 

  </ol>
 </section>


<script type="text/javascript" src="stylejs/script.js"></script>
  </body>
</html>
