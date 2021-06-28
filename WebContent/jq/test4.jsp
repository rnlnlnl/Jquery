<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test4</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		// attr() : 태그 속성값을 제어하는 함수
		
		// img 태그의 속성 src정보를 출력(alert)
		var mySrc = $("img").attr('src');
		alert(mySrc);
		
		// img 태그의 속성을 변경 border속성값을 5로 지정
		$('img').attr('border', '5');
		
		// img 태그의 border의 두깨를 각각 5,10,15 지정
		var bor = [5,10,15];
		$('img').attr('border', function (index) {
			//alert(index);
			//return bor[index];
			return (index+1)*5;
		});
		
		// img 태그의 속성 'border-5', 'width-150', 'height-100'
		$('img').attr({
			border: "5",
			width: "150",
			height: "100"
		});
		
		// img 속성변경, 가로 길이만 100,200,300
		$('img').attr({
			border: "5",
			height: "100",
			width: function (index) {
				return (index+1)*100;
			}
		});
		
		
	});
	
	
</script>
</head>
<body>
	<h1>WebContent/jq/test4.jsp</h1>
	
	<img src="duck.jpg">
	<img src="fal.jpg">
	<img src="nida.jpg">
	
	
	
	
	
	
	
</body>
</html>