<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="premier.bean.PlayerBean"%>
<%@ page import="java.util.List"%>
<%@ page import="premier.dao.PlayerDao"%>
<%@ page import="java.io.PrintWriter"%>
<%
	PlayerDao dao = new PlayerDao();
	// 페이지 start, end를 저장해줄 HashMap지정
	HashMap<String, Integer> map = new HashMap<String, Integer>();
	// 현재페이지
	String current_page = request.getParameter("page");
	// 한페이지에 최대 몇개의 row 출력
	String numper_page = request.getParameter("rows");
	int row = Integer.parseInt(numper_page);
	// 속성을 저장해줄 객체
	JSONObject jsonObj = new JSONObject();
	// jsonObject에 데이터를 저장해줄 객체
	JSONObject jsonData = null;
	// jsonObj와 jsonData를 저장해줄 객체
	JSONArray jsonArray = new JSONArray();
	
	map.put("start", Integer.parseInt(current_page)*10-9);
	map.put("end", Integer.parseInt(current_page)*Integer.parseInt(numper_page));
	List<PlayerBean> list = dao.selectAllPlayer(map);
	
	for(int i=0 ; i<list.size() ; i++){
		PlayerBean bean = list.get(i);
		jsonData = new JSONObject();
		String name = bean.getFirstName()+" "+bean.getLastName();
		jsonData.put("name", name.trim());
		jsonData.put("birthDate", bean.getBirthDate());
		jsonData.put("height", bean.getHeight());
		jsonData.put("weight", bean.getWeight());
		jsonData.put("nationality", bean.getNationality());
		jsonData.put("teamName", bean.getTeamName());
		jsonData.put("favoritePosition", bean.getFavoritePosition());
		jsonData.put("playStyle", bean.getPlayStyle());
		jsonData.put("positionStat", bean.getPositionStat());
		jsonData.put("totalStat", bean.getTotalStat());
		jsonArray.add(jsonData);
	}
	
	//현재페이지의 목록데이터
	jsonObj.put("rows", jsonArray);
	//현재페이지
	jsonObj.put("page", current_page);
	//총페이지수
	jsonObj.put("total", dao.getTotalRow()%row!=0?dao.getTotalRow()/row+1:dao.getTotalRow()/row);
	//총글목록수
	jsonObj.put("records", list.size());
	
	PrintWriter pw = response.getWriter();
	pw.print(jsonObj);
	pw.flush();
	pw.close();
	
%>
