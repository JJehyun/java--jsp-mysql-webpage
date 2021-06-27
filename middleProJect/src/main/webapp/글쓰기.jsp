 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> 글쓰기 창 529 </title>
<script type="text/javascript" src="se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
var oEditors = [];
$(function(){
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
        //SmartEditor2Skin.html 파일이 존재하는 경로
        sSkinURI: "se2/SmartEditor2Skin.html",  
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,      
            fOnBeforeUnload : function(){
                 
            }
        }, 
        fOnAppLoad : function(){
            //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
            oEditors.getById["ir1"].exec("PASTE_HTML", ["작성 해주세요"]);
        },
        fCreator: "createSEditor2"
    });
    
    //저장버튼 클릭시 form 전송
    $(".goserver").click(function(){
        oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
        $("#frm").submit();
    });    
});
 
 

</script>
<link href="stylejs/writenotice.css" rel="stylesheet">
</head>
<body>
<style>
html,body{background-color:#403d39}
 #buttonA{border:4px solid black; color:black;}
 #buttonA .icon-arrow before{color:black;}
</style>

	


		
		


<div id="header_main">
	<div id="head_right"><span style="font-size:50px">게시판</span><span style="color:gray">이곳은 글쓰기 page 입니다</span></div>


	<div id="head_left"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-home-2" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="#9e9e9e" fill="none" stroke-linecap="round" stroke-linejoin="round">
						  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
						  <polyline points="5 12 3 12 12 3 21 12 19 12" />
						  <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
						  <rect x="10" y="12" width="4" height="4" />
						</svg><span>게시판</span><span>></span><span>글쓰기 page</span>
	</div>
</div>

<form id="frm" action="글쓰기_확인.jsp" method="post" enctype="multipart/form-data">
<center><table>
        <tr>
            <td>제목:</td>
            <td><input type="text" id="title" name="title" style="width:800px; background-color:#403d39; border:2px solid gray; color:black;"/></td>
        </tr>
        <tr>
            <td>파일 첨부:</td>
            <td><input type="file" name="file1"></td>
        </tr>
        <tr>
            <td>내용:</td>
            <td>
                <textarea rows="8" cols="20" id="ir1" name="content" style="color:white;width:800px; height:500px; border:2px solid gray;"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">

                        <a id="buttonA" href="http://localhost:8080/middleProJect/공지게시판.jsp" style="bottom:0%; position: relative; margin-left: 67px;">
				          <svg class="icon-arrow before">
				              <use xlink:href="#arrow"></use>
				          </svg>
				          <span class="label">취소</span>
				          <svg class="icon-arrow after">
				              <use xlink:href="#arrow"></use>
				          </svg>
				        </a>
				
				        <svg style="display: none;">
				        <defs>
				          <symbol id="arrow" viewBox="0 0 35 15">
				            <title>Arrow</title>
				            <path d="M27.172 5L25 2.828 27.828 0 34.9 7.071l-7.07 7.071L25 11.314 27.314 9H0V5h27.172z "/>
				          </symbol>
				        </defs>
				        </svg>






					      <a id="buttonA" class="goserver" onclick="document.getElementById('frm').submit();" style="bottom:0%; right:0%; position: relative; margin-left: 478px;">
				          <svg class="icon-arrow before">
				              <use xlink:href="#arrow"></use>
				          </svg>
				          <span class="label" id="save">글작성</span>
				          <svg class="icon-arrow after">
				              <use xlink:href="#arrow"></use>
				          </svg>
				        </a>
				
				        <svg style="display: none;">
				        <defs>
				          <symbol id="arrow" viewBox="0 0 35 15">
				            <title>Arrow</title>
				            <path d="M27.172 5L25 2.828 27.828 0 34.9 7.071l-7.07 7.071L25 11.314 27.314 9H0V5h27.172z "/>
				          </symbol>
				        </defs>
				        </svg>



            </td>
        </tr>
</table></center>


</form>












		

</body>
</html>