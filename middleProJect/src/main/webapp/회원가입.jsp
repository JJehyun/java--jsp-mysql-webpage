<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="middleProJect.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
  <link href="stylejs/joinmember.css" rel="stylesheet">
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="utf-8">
<title>회원 가입 창</title>
</head>
<body>
<%UserDAO one = new UserDAO();
one.dbcon();
System.out.println("db연결 확인완료!");

%>

<form action="http://localhost:8080/middleProJect/회원가입_확인.jsp" method="post" id="join_member">
<div class="wrap wd668">
    <div class="container">
      <div class="form_txtInput">
        <h2 class="sub_tit_txt">회원가입</h2>
        <p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
        <div class="join_form">
          <table>
            <colgroup>
              <col width="30%"/>
              <col width="auto"/>
            </colgroup>
            <tbody>
              <tr>
                <th><span>아이디</span></th>
                <td><input type="text" placeholder="ID 를 입력하세요." name="userID"></td>
              </tr>
              <tr>
                <th><span>이름</span></th>
                <td><input type="text" placeholder="이름을 입력해주세요." name="name"></td>
              </tr>
              <tr>
                <th><span>비밀번호</span></th>
                <td><input type="password" placeholder="비밀번호를 입력해주세요." maxlength="8" name="userPassword"></td>
              </tr>
              <tr>
                <th><span>비밀번호 확인</span></th>
                <td><input type="password" placeholder="비밀번호를 확인하세요" maxlength="8"></td>
              </tr>
              <tr>
                <th><span>이메일</span></th>    
                  <td><input type="email" placeholder="이메일을 입력하세요." name="email" ></td>
              </tr>
              <tr>
                <th><span>나이(만)</span></th>
                <td><input type="text" maxlength="2" style="width:60px;" placeholder="나이" name="age"></td>
              </tr>
              
              
              
              <tr>
                <th><span>주소</span></th>
                <td><input type="text" id="sample4_postcode" placeholder="우편번호" style="width:140px;">
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="width:140px;margin-left: 5px;">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="width:105px; height:40px;border-radius: 3px;color: gray;margin-left: 5px;">
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="margin-top: 5px;">
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" id="sample4_detailAddress" placeholder="상세주소" style="margin-top: 5px;">
				<input type="text" id="sample4_extraAddress" placeholder="인근 주소" style="margin-top: 5px;"></td>
              </tr>              
              
              
              
            </tbody>
          </table>
          <div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span></div>
        </div><!-- join_form E  -->
        <div class="agree_wrap">
          <div class="checkbox_wrap">
            <input type="checkbox" id="news_letter" name="news_letter" class="agree_chk">
            <label for="news_letter">[선택]뉴스레터 수신동의</label>
          </div>
          <div class="checkbox_wrap mar27">
            <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
            <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
            <ul class="explan_txt">
              <li><span class="red_txt">항목 : 성별, 생년월일</span></li>
              <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                다만 이때 회원 대상 서비스가 제한될 수 있습니다.
              </li>
            </ul>
          </div>
        </div>
        <div class="btn_wrap">
          <a onclick="document.getElementById('join_member').submit()">다음</a>
        </div>
      </div> <!-- form_txtInput E -->
    </div><!-- content E-->
  </div> <!-- container E -->
</form>


<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>


</body>
</html>