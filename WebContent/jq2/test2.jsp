<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function () {
		
		// a링크 클릭시 배경색을 설정
		$('a').click(function (event) {
			
			console.log(event);
			alert(event);
			$(this).css('background-color','blue');
			
			// 이벤트 처리X
			//event.preventDefault(); // 페이지 이동(하이퍼 링크X)
			//console.log(event);
			
			return false;
		});
		
		// h2 태그 클릭시 + 기호 추가
		
		$('h2').click(function () {
			$(this).html(function (idx,ohtml) {
				return ohtml+"+";
			});
			//return false; (X)
			$(this).unbind(); // 이벤트가 1번만 실행 하고 소멸
			
		});
		
	});
	
	
	
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jq2/test2</h1>
	
	<h1><a href="http://www.naver.com">네이버페이지</a></h1>
	
	<h2> 이벤트 시작/끝 </h2>
	
	
	
	
</body>
</html>