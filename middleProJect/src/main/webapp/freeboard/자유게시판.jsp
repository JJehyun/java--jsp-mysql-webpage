<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판 </title>
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
     <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
     <link href="freeboardcss/freeboard.css" rel="stylesheet">
</head>
<body>
<%
Connection con = null; 
PreparedStatement stmt = null; 
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/user_infor";
String user = "root";
String pw = "111111";
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, user, pw);

String nameID = (String) session.getAttribute("aaa"); 
UserDAO DAO = new UserDAO();
String userimg = DAO.myinforimg(nameID);




//pageing
int pass =1;
String tempstart = request.getParameter("page");



int startpage =0;		//고정
int onepagecnt =5;      // 한 페이지당 몇 게시글 호출
int count = DAO.Freeboardcount();  //게시글 총 갯수 확인 함수
count = (int)Math.ceil((double)count/(double)onepagecnt); //



if(tempstart !=null){
	pass = Integer.parseInt(tempstart);
	startpage =(pass-1)*onepagecnt; 
}

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
                <li><a href="http://localhost:8080/middleProJect/공지게시판.jsp" style="z-index:99">공지 게시판</a></li>
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

        <div style="background-color:#6c757d; width:100%;"><span style="background-color:#6c757d;margin-left: 30px;">코딩 게시판 > 게시판 > 자유 게시판</span></div>





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




         <div class="outer-container">
           <div style="display:flex;justify-content:space-between;">
                      <div><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp" style="margin-left:10px;font-size:35px">자유 게시판 </a> </div>
					<form action="http://localhost:8080/middleProJect/freeboard/자유게시판_검색.jsp" method="post">
                      <div style="position:relative">                      
                      <select name="selected" id="selectbox1">
                      <option value="title">제목</option>
                      <option value="username">작성자</option>
                      <option value="time">작성일자</option>
                      <option value="counter">조회수</option>
                      </select>
                      <div id="searchthis" style="display:inline;margin-right:100px;">
                        <input id="namanyay-search-box" name="q" size="40" type="text" placeholder="Search" />
                        <input id="namanyay-search-btn" value="Go" type="submit"/>
                        
                      </div>
                      <img src="http://localhost:8080/middleProJect/userPicture/<%=userimg %>" width="35px" height="35px" style="border: 0px solid gold;border-radius: 50%;-moz-border-radius: 50%;-khtml-border-radius: 50%;-webkit-border-radius: 50%; position:absolute; left:80%;" / >
                      <span style="position:absolute;left:88%;font-size:16px;top:9px;">김제현</span>
                     </div>
                     </form>
             </div>
             <table id="middletable">
                 <thead>
                     <tr>
                         <th style="width:35%">작성자</th>
                         <th style="width:40%">제목</th>
                         <th>작성일자</th>
                         <th>조회수</th>

                     </tr>
                 </thead>
                 <tbody>
                 
                 
                 <%String query = "select 529freeboard.id,529freeboard.name,529freeboard.title,529freeboard.counter,DATE_FORMAT(time,'%y-%m-%d'),529userinfor.userID,529userinfor.Email,529userinfor.name,529userinfor.IMG from 529freeboard INNER JOIN 529userinfor ON 529freeboard.name = 529userinfor.userID order by 529freeboard.id desc limit ?,?";
                 stmt = con.prepareStatement(query);
                 stmt.setInt(1,startpage);
                 stmt.setInt(2,onepagecnt);
                 rs = stmt.executeQuery(); while(rs.next()){%>
                     <tr>
                         <td style="position:relative;" class="name"><img src="http://localhost:8080/middleProJect/userPicture/<%=rs.getString(9)%>" width="35px" height="30px" style="border: 0px solid gold;border-radius: 50%;-moz-border-radius: 50%;-khtml-border-radius: 50%;-webkit-border-radius: 50%;" /><span style="position:absolute;"> <%=rs.getString(8) %> </span><span><%=rs.getString(7) %></span></td>
                         <td class="clicks"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판_상세페이지.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(3)%></a></td>
                         <td class="priority"><i class="fas fa-circle"></i><%=rs.getString(5) %></td>
                         <td class="impressions"><%=rs.getString(4)%></td>
                         <td class="delete"><button class="delete-btn"><i class="fas fa-trash-alt" title="delete row"></i></button></td>
                     </tr>
					<%} %>
                 </tbody>
             </table>

<div style="display:flex;justify-content:space-between;">
<div style="border:0px solid black; width:100px;"></div>             
             <div style="width:270px;height:30px;">
             <ul class="pagination">
             <%if(pass == 1){ %><li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp" onclick="alert('처음 페이지 입니다.');" class="prev">< Prev</a></li><%}else{ %><li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=pass-1%>" class="prev">< Prev</a></li><%} %>
               <%for(int i=pass-1; i<pass+2; i++){%>
               <%if(pass == count){%><a style="color:black;padding-top: 13px;">마지막 페이지</a><%break;} %>
                <%if(i == 0){%><li class="pageNumber active"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=1 %>"><%=1 %></a></li><li class="pageNumber active"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=2 %>"><%=2 %></a></li><li class="pageNumber active"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=3 %>"><%=3 %></a></li><%break;} %>
               <li class="pageNumber active"><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=i %>"><%=i %></a></li><%} %>
               <%if(pass == count){ %><li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=pass%>" onclick="alert('마지막 페이지 입니다.');" class="next">Next ></a></li><%}else {%><li><a href="http://localhost:8080/middleProJect/freeboard/자유게시판.jsp?page=<%=pass+1%>" class="next">Next ></a></li><%} %>
             </ul>
             </div>
<div class="wrap">
      <a href="http://localhost:8080/middleProJect/freeboard/자유게시판_글쓰기.jsp" class="button">글쓰기</a>
</div>
</div>





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




// Iterate over each select element
$('select').each(function () {

    // Cache the number of options
    var $this = $(this),
        numberOfOptions = $(this).children('option').length;

    // Hides the select element
    $this.addClass('s-hidden');

    // Wrap the select element in a div
    $this.wrap('<div class="select"></div>');

    // Insert a styled div to sit over the top of the hidden select element
    $this.after('<div class="styledSelect"></div>');

    // Cache the styled div
    var $styledSelect = $this.next('div.styledSelect');

    // Show the first select option in the styled div
    $styledSelect.text($this.children('option').eq(0).text());

    // Insert an unordered list after the styled div and also cache the list
    var $list = $('<ul />', {
        'class': 'options'
    }).insertAfter($styledSelect);

    // Insert a list item into the unordered list for each select option
    for (var i = 0; i < numberOfOptions; i++) {
        $('<li />', {
            text: $this.children('option').eq(i).text(),
            rel: $this.children('option').eq(i).val()
        }).appendTo($list);
    }

    // Cache the list items
    var $listItems = $list.children('li');

    // Show the unordered list when the styled div is clicked (also hides it if the div is clicked again)
    $styledSelect.click(function (e) {
        e.stopPropagation();
        $('div.styledSelect.active').each(function () {
            $(this).removeClass('active').next('ul.options').hide();
        });
        $(this).toggleClass('active').next('ul.options').toggle();
    });

    // Hides the unordered list when a list item is clicked and updates the styled div to show the selected list item
    // Updates the select element to have the value of the equivalent option
    $listItems.click(function (e) {
        e.stopPropagation();
        $styledSelect.text($(this).text()).removeClass('active');
        $this.val($(this).attr('rel'));
        $list.hide();
        /* alert($this.val()); Uncomment this for demonstration! */
    });

    // Hides the unordered list when clicking outside of it
    $(document).click(function () {
        $styledSelect.removeClass('active');
        $list.hide();
    });

});






$(document).ready(function(){
    var classes = ["priority-200", "priority-600", "priority-300"];

    $("#middletable tr").each(function(){
        $(this).addClass(classes[~~(Math.random()*classes.length)]);
    });
});

         </script>
</body>
</html>