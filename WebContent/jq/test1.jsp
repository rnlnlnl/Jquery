<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Jquery 라이브러리 추가 -->
<script src="../js/jquery-3.6.0.min.js"></script>
<!-- Jqurey 사용 -->
<!-- Jqurey는 html이 실행되고 페이지가 만들어진다 -->
<script type="text/javascript">
	// document = 문서  가 준비되면은 function을 실행한다
	$(document).ready(function () {
		alert("제이쿼리 실행1! ");
	});
	
	$(function () {
		alert("이거많이 사용2!");
	});
	
	jQuery(document).ready(function () {
		alert("이거안씀3!");
	});
	
	jQuery(function () {
		alert("이거안씀4!");
	});
	
	
	
	
	
	
	
	
</script>

<!-- 자바스크립트는 페이지가 호출이 되고 html이 만들어진다 -->
<!-- <script type="text/javascript">
	alert("자바스크립트 실행1!");
</script> -->






</head>
<body>
	<h1>WebContent/jq/test1.jsp</h1>
	
	
	
	
	
	
	
	
	
</body>
</html>