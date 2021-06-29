<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		// 이벤트 : 페이지에서 방문자가 행하는 모든 행동
		// bind() : 이벤트 등록 함수
		// $(요소).bind(이벤트1,이벤트2,...이벤트n, 실행코드);
		
		$('#btn2').bind('click', function () {
			alert("클릭이벤트 발생(Jquery)");
		});
		
		$('#btn2').click(function () {
			alert("클릭이벤트 발생(click)");
		});
		
		//this 여기는 안먹힌다
		$('h2').click(function () {
			// + 기호를 추가
			//$('h2').text('+');
			/* $('h2').html(function (idx, ohtml) {
				return ohtml+"+";
			}); */
			$(this).html(function (idx, ohtml) {
				return ohtml+"+";
			});
			//$('h2').append('+');
			
		}); 
		
		
		$('img').attr('border',5);
		
		$('img').mouseover(function() {
			//alert("11");
			$(this).attr('src','2.jpg');
		});
		$('img').mouseout(function() {
			//alert("11");
			$(this).attr('src','1.jpg');
		});
		
		// 체이닝 기법
		$('img').mouseover(function () {
			$(this).attr('src','2.jpg');
		}).mouseout(function () {
			$(this).attr('src','1.jpg');
		});
		
	});
	
	
	
</script>
<title>test1</title>
</head>
<body>
	<h1>WebContent/jq2/test1</h1>
	<input type="button" value="클릭 이벤트" onclick="alert('클릭js');">
	<input type="button" value="클릭이벤트2" id="btn2">
	
	<hr>
	
	<h1> h2태그 클릭 시 마다 "+" 기호를 추가</h1>
	<h2> head-0 </h2>
	<h2> head-1 </h2>
	<h2> head-2 </h2>
	
	<hr>
	<h3>마우스를 올렸을때 2번그림으로 바꾸기</h3>
	<img src="1.jpg">
	<img src="2.jpg">
	
	
	
	
	
	
	
	
</body>
</html>