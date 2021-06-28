<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		
		//setInterval("console.log('@@@@')",3);
		// setInterval(함수, 시간) : 일정 시간마다, 특정 함수를 반복
		var auto = setInterval(function() {
			$('body').append($('img').first());
		}, 2000);
		
		
		$("#s").click(function() {
			// clearInterval(객체 정보 ) : 인터벌 객체정보 초기화
			clearInterval(auto);
		});
		
	});
	
	
	
	
	
</script>
</head>
<body>
	<h1>WebContent/jq/test7.jsp</h1>
	<button id="s">멈춰</button>
	<img src="duck.jpg">
	<img src="fal.jpg">
	<img src="nida.jpg">
	
	
</body>
</html>