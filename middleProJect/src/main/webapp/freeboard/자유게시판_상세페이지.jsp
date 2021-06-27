<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<%@page import="middleProJect.Freeboard"%>
<!DOCTYPE html>
 <html>
  <head>
     <meta charset="utf-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
        <link href="freeboardcss/detailpage.css" rel="stylesheet">
        <title>공지 게시판_ 상세 페이지</title>
      </head>
    <body>
<%request.setCharacterEncoding("utf-8");
String titlenumber = request.getParameter("id");
Freeboard Free = new Freeboard();
String username = Free.Freeuser(titlenumber);
String Freeusername = Free.Freeusername(titlenumber);
String userage = Free.Freeage(titlenumber);
String useremail = Free.Freeemail(titlenumber);
String userimg = Free.Freeimg(titlenumber);
String usertitle = Free.freetitle(titlenumber);
String usertime = Free.freetime(titlenumber);
String usercounter = Free.freecounter(titlenumber);
String userdescription = Free.freecontents(titlenumber);
Free.Freecounter(titlenumber);
String userpoto = Free.freeboardimg(titlenumber); 
UserDAO DAO =new UserDAO();






Connection con = null; 
PreparedStatement stmt = null; 
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/user_infor";
String user = "root";
String pw = "111111";
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, user, pw);

%>
      <div class="menu-area" style="width:100%;">
          <ul>
            <li><a href="http://localhost:8080/middleProJect/Main.jsp" style="width:320px;">코딩 메모장</a></li>
            <li><a href="#" style="z-index:99">홈으로</a><ul class="dropdown-1" style="z-index:99">
              <li><a href="#" style="z-index:99">service one</a></li>
              <li><a href="#" style="z-index:99">service two</a></li>
              <li><a href="#" style="z-index:99">service three</a></li></ul>
            </li>
            <li><a href="#" style="z-index:99">사이드3개의 3개</a>
              <ul class="dropdown-1" style="z-index:99">
                <li><a href="http://localhost:8080/middleProJect/공지게시판.jsp" style="z-index:99">공지게시판</a></li>
                <li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp" style="z-index:99">자유게시판</a></li>
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

        <div style="background-color:#6c757d; width:100%;"><span style="background-color:#6c757d;margin-left: 30px;">코딩 게시판 > 게시판 > 상세페이지</span></div>













<div style="display:flex;">
        <ul class="sidebar-menu">
           <li><span class="nav-section-title"></span></li>
           <li>
           <div id="user_information_border">
             <span style="text-align:center;"><%=username%></span>
           <div id="user_information_border_under"></div>
            <table>
              <tr>
                <td rowspan="3" style="width:40%"><img src="http://localhost:8080/middleProJect/userPicture/<%=userimg %>"  alt="userimg" height="150" width="150" id="circleimg"></td>  <td style="text-align:left; height:20px;"><%=Freeusername%></td>  <td style="text-align:left"><%=userage %></td>
              </tr>
              <tr>
                  <td style="height:25px;" colspan="2"><%=useremail %></td>
              </tr>
              <tr>
                  <td colspan="2">글 작성자 프로필 정보</td>
              </tr>
            </table>
            <div id="user_information_border_undertwo"></div>
            <div id="Subscriptionbutton"><span style="margin-left:90px;margin-top:50px;">+ 구독하기</span></div>

           </div>
           </li>
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
<div style="width:100%">



<table style="width:100%">
 
  <%String query = "select id,title,DATE_FORMAT(time,'%y-%m-%d') from 529freeboard ORDER BY id desc limit 0,4";
    stmt = con.prepareStatement(query);
	rs = stmt.executeQuery();
	while(rs.next()){%><tr><td id="tdwidthten"><span style="margin-right:15px;color:blue">자유</span></td><td style="width:70%;"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판_상세페이지.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2) %></a></td><td style="width:20%"><%=rs.getString(3)%></td></tr><%}%>
  
</table>
<div id="user_information_border_under"></div>

<div style="display:flex; justify-content:space-around;"><span><%=usertitle %></span><div id="container"><button id="Ok" onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp'"><span>목록</span></button></div></div>
<div id="user_information_border_under"></div>

<div id="flex_between"><div style="border:2px soild black"></div> <div style="border:2px soild black"></div>  <span>2021-06-15</span></div>
<div id="flex_between">
  <table style="width:300px">
    <tr>
      <td style="width:70px;"><img width="60px" height="60px" src="http://localhost:8080/middleProJect/userPicture/<%=userimg %>" id="circleimg" /></td><td style="width:50px"><%=username %></td><td><%=usertitle %></td>
    </tr>
  </table>

  <table style="width:300px">
    <tr><td><span>&nbsp</span></td><td><span>&nbsp</span></td></tr>
    <tr><td style="text-align:right;"><span style="margin-right:15px;"><%=usertime %></span></td><td style="width:70px">조회수 <span>  <%=usercounter %></span></td></tr>
  </table>
</div>
<div id="border_two_px" style="margin-top:4px;"></div>
<%if(userpoto == null){ %>
<center><%=userdescription %></center><%}else{%><center><img width="450px" height="300px" src="http://localhost:8080/middleProJect/freeimg/<%=userpoto %>"></center>
<center><%=userdescription %></center>  <%}%>
















</div>
</div>
<div id="border_two_px"></div>


<center><div style="border:0px solid gray; width:73%; height:90px;">
  <span>comment</span>
  <div class="container_coment">
    <form action="http://localhost:8080/middleProJect/freeboard/자유게시판_댓글확인.jsp?id=<%=titlenumber %>" method="post">
      <div class="form-group">
        <textarea name="contentss" class="form-control status-box" rows="3" cols="135" placeholder="댓글을 입력해주세요!"></textarea>
      </div>
      <div style="display:flex;justify-content:space-between;">
        <div style="border:0px solid gray"></div>
    <div style="display:flex;">
      <p class="counter_comment" style="margin-right:10px;">250</p>
      <input type="submit" class="postsubmit" value="post"></input>
    </div>
      </div>
    </form>
  </div>
</div>
</center>


<div id="border_two_px" style="margin-top:10px;"></div>

<center><table style="width:73%">
<%
String querythree = "select * from 529freeboard inner join 529userinfor ON 529freeboard.name = 529userinfor.userID inner join 529freeboarddetail ON 529freeboard.id = 529freeboarddetail.connect where 529freeboard.id= ? ORDER BY 529freeboarddetail.id DESC ";
stmt = con.prepareStatement(querythree);
stmt.setString(1, titlenumber);
rs = stmt.executeQuery(); 
while(rs.next()){%>
<tr><td rowspan="2" style="margin-right:50px; width:5%;"><img width="50px;" height="50px;" src="http://localhost:8080/middleProJect/userPicture/<%=rs.getString(14)%>" /></td><td style="text-align:left;"><span style="margin-right:10px;"><%=rs.getString(13)%></span><span><%=rs.getString(20)%></span></td>    <td style="width:5%; text-align:right; color:red;"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판_삭제.jsp?id=<%=titlenumber %>&delete=<%=rs.getString(17)%>" style="color:red">X</a></td><td style="width:5%; text-align:center;"><span class="postsubmit">답글</span></td></tr>
<tr><td><%=rs.getString(19) %></td></tr><%} %>
</table>
</center>




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


var main = function() {
  $('.status-box').keyup(function() {
    var postLength = $(this).val().length;
    var charactersLeft = 250 - postLength;
    $('.counter_comment').text(charactersLeft);
    if (charactersLeft < 0) {
      $('.btnconment').addClass('disabled');
    } else if (charactersLeft === 250) {
      $('.btnconment').addClass('disabled');
    } else {
      $('.btnconment').removeClass('disabled');
    }
  });
}

$(document).ready(main)
         </script>
    </body>
</html>