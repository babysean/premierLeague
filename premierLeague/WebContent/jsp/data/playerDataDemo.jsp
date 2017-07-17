<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray" %>
<%@page import="java.io.PrintWriter"%>
<%
	// 현재페이지
	String current_page = request.getParameter("page");

	// 한페이지에 최대 몇개의 row 출력(mysql의 limit에 속하는데이터)
	String numper_page = request.getParameter("rows");
	
	JSONObject jsonObj = new JSONObject();
	JSONObject jsonObj2 = null;
	JSONArray jsonArray = new JSONArray();
	
	if (current_page.equals("1")) {
		jsonObj2 = new JSONObject();
		jsonObj2.put("백넘버", "1");
		jsonObj2.put("이름", "제목");
		jsonObj2.put("국가", "2014-11-11");
		jsonObj2.put("생년월일", "상후닝");
		jsonObj2.put("키", "1");
		jsonObj2.put("몸무게", "1");
		jsonObj2.put("몸크기", "1");
		jsonObj2.put("선호포지션", "1");
		jsonObj2.put("포지션스탯", "1");
		jsonArray.add(jsonObj2);

		jsonObj2 = new JSONObject();
		jsonObj2.put("백넘버", "1");
		jsonObj2.put("이름", "제목");
		jsonObj2.put("국가", "2014-11-11");
		jsonObj2.put("생년월일", "상후닝");
		jsonObj2.put("키", "1");
		jsonObj2.put("몸무게", "1");
		jsonObj2.put("몸크기", "1");
		jsonObj2.put("선호포지션", "1");
		jsonObj2.put("포지션스탯", "1");
		jsonArray.add(jsonObj2);
	} else if (current_page.equals("2")) {
		jsonObj2 = new JSONObject();
		jsonObj2.put("seq", "3");
		jsonObj2.put("title", "제목33");
		jsonObj2.put("create_date", "2014-11-11");
		jsonObj2.put("create_name", "상후닝닝");
		jsonObj2.put("hitnum", "8");
		jsonArray.add(jsonObj2);

		jsonObj2 = new JSONObject();
		jsonObj2.put("seq", "4");
		jsonObj2.put("title", "제목4444");
		jsonObj2.put("create_date", "2014-11-15");
		jsonObj2.put("create_name", "상후닝닝");
		jsonObj2.put("hitnum", "2");
		jsonArray.add(jsonObj2);
	}

	//현재페이지의 목록데이터
	jsonObj.put("rows", jsonArray);
	//현재페이지
	jsonObj.put("page", current_page);
	//총페이지수
	jsonObj.put("total", 2);
	//총글목록수
	jsonObj.put("records", 4);
	
	PrintWriter pw = response.getWriter();
	pw = response.getWriter();
	pw.print(jsonObj);
	pw.flush();
	pw.close();
%>
