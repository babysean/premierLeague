<%@page import="java.util.Set"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="premier.bean.PlayerBean"%>
<%@ page import="java.util.List"%>
<%@ page import="premier.dao.PlayerDao"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="java.io.PrintWriter"%>
<%
	PlayerDao dao = new PlayerDao();
	int playerno = 27;

	List<PlayerBean> list = dao.selectAllPlayer();
	PlayerBean bean = list.get(0);
	
	String json = 
				"[" + 
					"{ \"firstName\" : \"상훈이\"," + 
					"\"birthDate\" : \"921027\"," + 
					"\"height\" : \"222\"," + 
					"\"weight\" : \"222\"," + 
					"\"nationality\" : \"대한민국\"," + 
					"\"teamName\" : \"아스날\"," + 
					"\"favoritePosition\" : \"공격형미드필더\"," + 
					"\"playStyle\" : \"플레이메이커\"," + 
					"\"positionStat\" : \"2000\"," + 
					"\"totalStat\" : \"2000\"" +
					"}"+
				"]";
	
	System.out.println(json);
	
	PrintWriter pw = response.getWriter();
	pw = response.getWriter();
	pw.print(json);
	pw.flush();
	pw.close();
	
%>
