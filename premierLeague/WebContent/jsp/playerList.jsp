<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" media="screen" href="/premierLeague/jqueryui/jquery-ui.css">
<link rel="stylesheet" type="text/css" media="screen" href="/premierLeague/jqgrid/css/ui.jqgrid.css">
<title>Insert title here</title>
<script src="/premierLeague/jqgrid/js/jquery-1.11.0.min.js"></script>
<script src="/premierLeague/jqgrid/js/jquery.jqGrid.min.js"/></script>
<script src="/premierLeague/jqgrid/src/i18n/grid.locale-en.js"></script>
<script src="/premierLeague/jqueryui/jquery-ui.js"></script>
<script>
	$(function(){
		// jqGrid 껍데기 생성
		$("#list").jqGrid({
			// ajax 호출할 페이지
			url:'/premierLeague/jsp/data/playerData.jsp',
			// 로딩중일때 출력시킬 로딩내용
			loadtext:'로딩중..',
			// 응답값
			datatype:"json",
			// 그리드 높이
			height:500,
			// 한 페이지에 출력할 데이터 개수
			rowNum:10,
			// 페이징 UI 적용을 위한 속성
			pager:'#page',
			// 컬럼명들
			colNames:['이름','국가','팀명','생년월일','키','몸무게','선호포지션','플레이스타일','포지션스탯','총스탯'],
			// 컬럼모델
			colModel:[
				{name:'이름'},
				{name:'국가'},
				{name:'팀명'},
				{name:'생년월일'},
				{name:'키'},
				{name:'몸무게'},
				{name:'선호포지션'},
				{name:'플레이스타일'},
				{name:'포지션스탯'},
				{name:'총스탯'}
			],
			// 그리드타이틀
			caption:"선수"
		});
	});
</script>
</head>
<body>
<table id="list">
</table>
<div id="page"></div>
</body>
</html>