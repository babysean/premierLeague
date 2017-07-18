<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" media="screen"
	href="/premierLeague/jqueryui/jquery-ui.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="/premierLeague/jqgrid/css/ui.jqgrid.css">
<title>Insert title here</title>
<script src="/premierLeague/jqgrid/js/jquery-1.11.0.min.js"></script>
<script src="/premierLeague/jqgrid/js/jquery.jqGrid.min.js" /></script>
<script src="/premierLeague/jqgrid/src/i18n/grid.locale-en.js"></script>
<script src="/premierLeague/jqueryui/jquery-ui.js"></script>
<style>
div#listDiv {
	width: 100%;
	margin: 0 auto;
}
</style>
<script>
	$(function() {
		// jqGrid 껍데기 생성
		$("#list").jqGrid(
				{
					// ajax 호출할 페이지
					url : '/premierLeague/jsp/data/playerAllData.jsp',
					// 로딩중일때 출력시킬 로딩내용
					loadtext : '로딩중..',
					// 응답값
					datatype : "json",
					// 그리드 높이
					height : 700,
					// 그리드 넓이
					autowidth : true,
					// 한 페이지에 출력할 데이터 개수
					rowNum : 30,
					// 페이징 UI 적용을 위한 속성
					pager : '#page',
					search : true,
					// 컬럼명들
					colNames : [ 'name', 'birthDate', 'height', 'weight',
							'nationality', 'teamName', 'favoritePosition',
							'playStyle', 'positionStat', 'totalStat' ],
					// 컬럼모델
					colModel : [ {
						name : 'name',
						index : 'name'
					}, {
						name : 'birthDate',
						index : 'birthDate'
					}, {
						name : 'height',
						index : 'height'
					}, {
						name : 'weight',
						index : 'weight'
					}, {
						name : 'nationality',
						index : 'nationality'
					}, {
						name : 'teamName',
						index : 'teamName'
					}, {
						name : 'favoritePosition',
						index : 'favoritePosition'
					}, {
						name : 'playStyle',
						index : 'playStyle'
					}, {
						name : 'positionStat',
						index : 'positionStat'
					}, {
						name : 'totalStat',
						index : 'totalStat'
					} ],
					// 그리드타이틀
					caption : "프리미어리그 선수 목록 "
				});
	});
</script>
</head>
<body>
	<div id="listDiv" class="table-responsive">
		<table id="list" class="table-hover">
		</table>
		<div id="page"></div>
	</div>
</body>
</html>