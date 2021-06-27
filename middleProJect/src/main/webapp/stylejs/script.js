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



$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();


const today = new Date();
const year = today.getFullYear();const month = today.getMonth()+1;const date = today.getDate();
console.log(year,month,date)
document.getElementById("year_text").innerHTML=year
document.getElementById("month_text").innerHTML= month
document.getElementById("date_text").innerHTML= date



$(document).ready(function() {

var $panel = $(".rolling_panel").find("ul");

var itemWidth = $panel.children().outerWidth(); // 아이템 가로 길이
var itemLength = $panel.children().length;      // 아이템 수

// Auto 롤링 아이디
var rollingId;

auto();

// 배너 마우스 오버 이벤트
$panel.mouseover(function() {
clearInterval(rollingId);
});

// 배너 마우스 아웃 이벤트
$panel.mouseout(function() {
auto();
});

// 이전 이벤트
$("#prev").on("click", prev);

$("#prev").mouseover(function(e) {
clearInterval(rollingId);
});

$("#prev").mouseout(auto);

// 다음 이벤트
$("#next").on("click", next);

$("#next").mouseover(function(e) {
clearInterval(rollingId);
});

$("#next").mouseout(auto);

function auto() {

// 2초마다 start 호출
rollingId = setInterval(function() {
 start();
}, 2000);
}

function start() {
$panel.css("width", itemWidth * itemLength);
$panel.animate({"left": - itemWidth + "px"}, function() {

 // 첫번째 아이템을 마지막에 추가하기
 $(this).append("<li>" + $(this).find("li:first").html() + "</li>");

 // 첫번째 아이템을 삭제하기
 $(this).find("li:first").remove();

 // 좌측 패널 수치 초기화
 $(this).css("left", 0);
});
}

// 이전 이벤트 실행
function prev(e) {
$panel.css("left", - itemWidth);
$panel.prepend("<li>" + $panel.find("li:last").html() + "</li>");
$panel.animate({"left": "0px"}, function() {
 $(this).find("li:last").remove();
});
}

// 다음 이벤트 실행
function next(e) {
$panel.animate({"left": - itemWidth + "px"}, function() {
 $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
 $(this).find("li:first").remove();
 $(this).css("left", 0);
});
}
});
//자동 슬라이드 관련


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
