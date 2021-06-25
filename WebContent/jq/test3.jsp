<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test3</title>

<script src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function () {
		// 요소의 속성을 사용(적용)
		//$('h2').css('color','blue');
		
		// 요소의 속성값을 가져오는 기능
		var c = $('h2').css('color');
		//alert("c : "+c);
		
		// h2 요소의 글자색 속성값을 red 변경
		$('h2').css('color','red');
		
		// 요소의 설정값을 변경(배열을 사용)
		var col = ['red','yellow','blue','pink','gray'];
		
		//$('h2').css('color', col[1]);
		$('h2').css('color', function (index) {
			//alert(index);
			return col[index];
		});
		
		
		
		
	});
	
	
	
	
	
	
</script>

</head>
<body>
	<h1>WebContent/jq/test3.jsp</h1>
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	<h2>head-3</h2>
	<h2>head-4</h2>
	<h2>head-5</h2>
	<h2>head-6</h2>
	<h2>head-7</h2>
	<h2>head-8</h2>
	
	
</body>
</html>