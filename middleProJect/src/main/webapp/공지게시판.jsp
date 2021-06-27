<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8">
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
       <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
       <link href="stylejs/notice.css" rel="stylesheet">
      </head>
    <body>
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

        <div style="background-color:#6c757d; width:100%;"><span style="background-color:#6c757d;margin-left: 30px;">코딩 게시판 > 게시판 > 공지 게시판</span></div>





<div style="display:flex;">
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



         <div class="datatable-container">
           <!-- ======= Header tools ======= -->
           <div class="header-tools" style="display:flex;justify-content:space-between">
             <a class="btnsearch btnCancel except" href="http://localhost:8080/middleProJect/글쓰기.jsp" style="padding-bottom: 0px;cursor:pointer;margin-left: 8px;"><svg style="position:relative; top:5px;" xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-writing" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <path d="M20 17v-12c0 -1.121 -.879 -2 -2 -2s-2 .879 -2 2v12l2 2l2 -2z" />
  <path d="M16 7h4" />
  <path d="M18 19h-13a2 2 0 1 1 0 -4h4a2 2 0 1 0 0 -4h-3" />
</svg><span style="padding-bottom:10px;">글쓰기</span></a>

             <form class="search" action="http://localhost:8080/middleProJect/공지게시판_검색.jsp" method="post" style="display:flex;">
               <input type="search" name="q" class="search-input" placeholder="Search..." />
               <div class="searchbuttonContainer">
               <input type="submit" value="검색" class="btnsearch btnCancel except" onclick="displayBottomPop()"style="margin-left: 5px;"></input>
               </div>
             </form>
           </div>

           <!-- ======= Table ======= -->
           <table class="datatable">
             <thead>
               <tr>
                 <th>번호 ▲</th>
                 <th>작성자 ▲</th>
                 <th width="30%">내용 ▲</th>
                 <th>작성일 ▲</th>
                 <th>수정일 ▲</th>
                 <th>조회수 ▲</th>
               </tr>
             </thead>

             <tbody>
<%
int pass =1;
String tempstart = request.getParameter("page");



int startpage =0;		//고정
int onepagecnt =5;      // 한 페이지당 몇 게시글 호출
UserDAO DAO = new UserDAO();
DAO.Noticeorigin();
int count = DAO.noticecount();  //게시글 총 갯수 확인 함수
count = (int)Math.ceil((double)count/(double)onepagecnt);



if(tempstart !=null){
	pass = Integer.parseInt(tempstart);
	startpage =(pass-1)*onepagecnt; 
}

   Connection con = null; 
   PreparedStatement stmt = null; 
   ResultSet rs = null;
   String url = "jdbc:mysql://localhost:3306/user_infor";
   String user = "root";
   String pw = "111111";
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection(url, user, pw);

   String query = "select * from 529notice ORDER BY id desc limit ?,?";
   stmt = con.prepareStatement(query);
   stmt.setInt(1,startpage);
   stmt.setInt(2,onepagecnt);
   rs = stmt.executeQuery();
   System.out.println(count);
   while(rs.next()) {%>
               <tr>
                 <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><a href="http://localhost:8080/middleProJect/공지게시판_상세페이지.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(8)%></a></td>
                 <td><%=rs.getString(4)%></td>
                 <td><%=rs.getString(5)%></td>
                 <td><%=rs.getString(6)%></td>
               </tr>
<%} %>

             </tbody>
             <div class="footer-tools" style="position:absolute; top:95%; width:100%">
               <div class="list-items">
                 Show
                 <select name="n-entries" id="n-entries" class="n-entries">
                   <option value="5">5</option>
                   <option value="10" selected>10</option>
                   <option value="15">15</option>
                 </select>
                 entries
               </div>

               <div class="pages" style="position:absolute; right:100;">
                 <ul><li><button id="previous" onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=pass-1 %>'">◀</button></li>
                 <%for(int i=pass-1; i<pass+2; i++){%>
                 <%if(i == 0){%><li><button onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=1 %>'"><%=1 %></button></li><li><button onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=2 %>'"><%=2 %></button></li><li><button onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=3 %>'"><%=3 %></button></li> <%break;}%>
                 <%if(pass == count){%><a>마지막 페이지</a><%break;} %>
                 <li><button onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=i %>'"><%=i %></button></li>
                 <%} %>
                 <li><button id="next" onclick="location.href='http://localhost:8080/middleProJect/공지게시판.jsp?page=<%=pass+1 %>'">▶</button></li>
                 </ul>
               </div>
             </div>
           </table>

           <!-- ======= Footer tools ======= -->

         </div>

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
         
         if(<%=pass%> === 1){
        		$('#previous').hide();
        	} // 1 페이지 일때 이전 버튼 hide
        	
        	
            if(<%=pass%> == <%=count%>){
        		$('#next').hide();
        	} // 1 페이지 일때 이전 버튼 hide
         </script>
    </body>
</html>
