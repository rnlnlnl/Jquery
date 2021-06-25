<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 선택자 
		//$(대상정보).메서드("color","aqua");
		
		// * - 전체요소
		$('*').css('color','aqua');
		// '태그명' - 태그요소
		$('h1').css('color','red');
		$('h2').css('color','blue');
		// #아이디 - 아이디 요소
		$('#title1').css('color','gray');
		// .클래스명 - 클래스 요소
		$('.title2').css('color','orange');
		$('.title2').css('color','#005070');
		
		//////////////////////////////////////////
		// 속성탐색 선택자
		// 태그[속성=값] 
		// 태그[속성^=값] : 속성의 값중에서 [값]으로 시작하는 대상을 구분
		// 태그[속성$=값] : 속성의 값중에서 [값]으로 끝나는 대상을 구분
		$('input[type=text]').css('color','green');
		$('input[type=password]').css('color','pink');
		
		// t로 시작하는 속성
		$('input[type^=t]').css('color','black');
		
		$('input[type=text]').val('산삼854년근');
		
		// 속성을 값을 안적으면 값을 가지고 오는것
		// 2개나 1나는 넣는것 
		var tmp = $('input[type=text]').val();
		alert("tmp : "+ tmp);
		
		
		// 위치 탐색 선택자
		// 태그:odd  홀수   // 태그:even 짝수
		// 태그:first 처음 // 태그:last 마지막
		
		$('tr:odd').css('background','yellow');
		$('tr:even').css('background','green');
		
		$('tr:first').css('background','red');
		
		
	});
	
	
	
	
</script>

<!-- <style type="text/css">
	h2{
		color:aqua;
	}
</style> -->




<body>
	<h1>WebContent/jq/test2.jsp</h1>
	
	<h2 id="title1">제목1</h2>
	<h2 class="title2">제목2</h2>
	
	<hr>
	
	음오아예<br>
	<hr>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pass">
	
	<hr>
	
	<table border="1" width="200">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
	</table>
	
	
	
	
	
	
</body>
</html>