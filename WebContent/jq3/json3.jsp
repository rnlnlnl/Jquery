<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// DB에서 정보를 가져오기
	// 모든 회원 정보를 가져오기 동작 구현
	// 1. 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	// 2. 디비를 연결
	Connection conn = 
	DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
	
	// 3. sql 작성 & pst 객채생성
	String sql = "select * from itwill_member";
	
	PreparedStatement pst = conn.prepareStatement(sql);
	
	// 4. sql 실행
	ResultSet rs = pst.executeQuery();
	
	// 5. 데이터 처리
	//JSON으로 변경
	JSONArray memberList = new JSONArray();
	
	while(rs.next()){
		// 배열한칸에 객체 1개씩 저장
		JSONObject member = new JSONObject();
		
		member.put("id", rs.getString("id"));
		member.put("pass", rs.getString("pass"));
		member.put("name",rs.getString("name"));
		member.put("age", rs.getInt("age"));
		member.put("gender", rs.getString("gender"));
		member.put("email", rs.getString("email"));
		member.put("reg_date", rs.getTimestamp("reg_date")+"");
		//												  날짜를 문자로 변경 시킨다
		memberList.add(member);
	}
	
	//화면에 출력
%>


	<%=memberList%>





