<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/jquery-3.6.0.min.js"></script>

<style type="text/css">
	#ani{
		width: 50px;
		height: 50px;
		background-color: gold;
	}
	
	
</style>


<script type="text/javascript">
	$(function () {
		// show(), hide(), toggle()
		// slideDown(), slideUp(), slideToggle()
		// fadeIn(), fadeOut(), fadeToggle()
		
		$('h1').click(function () {
			//$(this).next().toggle();
			//$(this).next().slideToggle();
			$(this).next().fadeToggle('slow',function(){
				//콜백 함수 : 적용되는 효과를 100% 실행후 동작하는 함수ㅈㅈ 
				alert("효과끝!");
			});
		});
		
		$('div#ani').click(function() {
			
			var w = $(this).css("width");
			var h = $(this).css('height');
			
			//$(this).css('width',parseInt(w)+50);
			//$(this).css('height',parseInt(h)+50);
			
			// animate() : 효과를 적용하는 속성을 CSS를 사용해서 적용
			$(this).animate({
				width : parseInt(w)+50,
				height : parseInt(h)+50
			}, 'fast');
			
		});
		
		
		
		
		
	});
	
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jq2/test4</h1>
	
	<h1> 메뉴1 (열기/닫기) </h1>
	<div>
		<h1>제목1</h1>
		<p>내용1</p>
	</div>
	
	<h1> 메뉴2 (열기/닫기) </h1>
	<div>
		<h1>제목2</h1>
		<p>내용2</p>
	</div>
	
	<hr>
	
	<div id="ani"></div>
	
	
	
	
	
	
	
</body>
</html>